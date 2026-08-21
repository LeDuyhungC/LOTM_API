-- =============================================================
--  LOTM API - PostgreSQL Database Schema
--  @author Duy-Hung Le
--  VERSION 0.1 / AUG 2026
-- =============================================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- =============================================================
--  INDEPENDENT / ROOT TABLES
-- =============================================================

CREATE TABLE series (
    series_id       SERIAL          PRIMARY KEY,
    name            VARCHAR(255)    NOT NULL UNIQUE,
    description     TEXT,
    release_date    DATE,
    end_date        DATE
);

CREATE TABLE sefirots (
    sefirot_id      SERIAL          PRIMARY KEY,
    name            VARCHAR(255)    NOT NULL UNIQUE,
    description     TEXT
);

CREATE TABLE epochs (
    epoch_id    INT          PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL UNIQUE,
    years       INT,            
    description TEXT
);

CREATE TABLE materials (
    material_id SERIAL          PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL UNIQUE,
    description TEXT,
    rarity      VARCHAR(100)
);

CREATE TABLE artifacts (
    artifact_id SERIAL          PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL,
    description TEXT,
    code_name   VARCHAR(10)
);

CREATE TABLE factions (
    faction_id  SERIAL          PRIMARY KEY,
    name        VARCHAR(255)    NOT NULL UNIQUE,
    description TEXT
);

-- =============================================================
--  VOLUME & CHAPTER  (depend on SERIES)
-- =============================================================

CREATE TABLE volumes (
    volume_id       SERIAL  PRIMARY KEY,
    series_id       INT     NOT NULL REFERENCES series(series_id) ON DELETE CASCADE,
    volume_number   INT     NOT NULL,
    title           VARCHAR(255),
    UNIQUE (series_id, volume_number)
);

CREATE TABLE chapters (
    chapter_id      SERIAL  PRIMARY KEY,
    volume_id       INT     NOT NULL REFERENCES volumes(volume_id) ON DELETE CASCADE,
    chapter_number  INT     NOT NULL,
    title           VARCHAR(255),
    UNIQUE (volume_id, chapter_number)
);

-- =============================================================
--  location  (depend on Epoch & parent_location)
-- =============================================================

CREATE TABLE locations (
    location_id         SERIAL          PRIMARY KEY,
    name                VARCHAR(255)    NOT NULL,
    region              VARCHAR(255),   
    description         TEXT,
    parent_location_id  INT,
    epoch_start_id      INT             REFERENCES epochs(epoch_id) ON DELETE SET NULL,
    epoch_end_id        INT             REFERENCES epochs(epoch_id) ON DELETE SET NULL,  -- NULL = still exists

    CONSTRAINT fk_parent_location
        FOREIGN KEY (parent_location_id)
        REFERENCES locations(location_id)
        ON DELETE SET NULL
);

-- =============================================================
--  PATHWAYS  (depend on SEFIROT)
-- =============================================================

CREATE TABLE pathways (
    pathway_id  SERIAL          PRIMARY KEY,
    sefirot_id  INT             NOT NULL REFERENCES sefirots(sefirot_id) ON DELETE RESTRICT,
    names       TEXT[]          NOT NULL,
    color       VARCHAR(100),
    symbol      TEXT,                                   -- URL to pathway symbol image (e.g. from LOTM wiki)
    description TEXT
);

-- =============================================================
--  SEQUENCES  (depend on PATHWAYS)
-- =============================================================

CREATE TABLE sequences (
    sequence_id SERIAL      PRIMARY KEY,
    pathway_id  INT         NOT NULL REFERENCES pathways(pathway_id) ON DELETE CASCADE,
    position    SMALLINT    NOT NULL CHECK (position BETWEEN 0 AND 9),
    name        VARCHAR(255)      NOT NULL,
    description TEXT,
    UNIQUE (pathway_id, position)
);

-- =============================================================
--  ABILITIES  (depend on SEQUENCES)
-- =============================================================

CREATE TABLE abilities (
    ability_id  SERIAL          PRIMARY KEY,
    sequence_id INT             NOT NULL REFERENCES sequences(sequence_id) ON DELETE CASCADE,
    name        VARCHAR(255)    NOT NULL,
    type        TEXT            NOT NULL,
    description TEXT
);

-- =============================================================
--  CHARACTERS
-- =============================================================

CREATE TABLE characters (
    character_id        SERIAL          PRIMARY KEY,
    first_name          VARCHAR(100)    NOT NULL,
    last_name           VARCHAR(100)    NOT NULL,
    origin_location_id  INT             REFERENCES locations(location_id) ON DELETE SET NULL,
    
    birth_epoch_id      INT             REFERENCES epochs(epoch_id) ON DELETE SET NULL,
    birth_year          INT,
    
    death_epoch_id      INT             REFERENCES epochs(epoch_id) ON DELETE SET NULL,
    death_year          INT,
    death_event         TEXT,
    death_chapter_id    INT             REFERENCES chapters(chapter_id) ON DELETE SET NULL,
    description         TEXT,
    UNIQUE (first_name, last_name)
);

-- =============================================================
--  ALIAS  (1:N — one character has many aliases)
-- =============================================================

CREATE TABLE alias (
    alias_id            SERIAL          PRIMARY KEY,
    character_id        INT             NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE,
    name                VARCHAR(255)    NOT NULL,
    description         TEXT,
    UNIQUE (character_id, name)
);

-- =============================================================
--  JUNCTION TABLES  (N:M)
-- =============================================================

-- LOCATION <-> FACTIONS  (N:M via location_faction)
CREATE TABLE location_faction (
    location_id     INT     NOT NULL REFERENCES locations(location_id) ON DELETE CASCADE,
    faction_id      INT     NOT NULL REFERENCES factions(faction_id) ON DELETE CASCADE,
    role            TEXT,
    is_headquarters BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (location_id, faction_id)
);

-- SEQUENCES <-> MATERIAL  (N:M via sequence_material)
CREATE TABLE sequence_material (
    sequence_id INT             NOT NULL REFERENCES sequences(sequence_id) ON DELETE CASCADE,
    material_id INT             NOT NULL REFERENCES materials(material_id) ON DELETE CASCADE,
    quantity    NUMERIC(10, 2)  NOT NULL DEFAULT 1,
    unit        VARCHAR(50)     NOT NULL,
    PRIMARY KEY (sequence_id, material_id)
);

-- ARTIFACTS <-> ABILITIES (N:M via artifact_ability)
CREATE TABLE artifact_ability (
    artifact_id INT NOT NULL REFERENCES artifacts(artifact_id) ON DELETE CASCADE,
    ability_id  INT NOT NULL REFERENCES abilities(ability_id) ON DELETE CASCADE,
    PRIMARY KEY (artifact_id, ability_id)
);

-- =============================================================
--  TERNARY TABLES  (Character + Entity + Chapter Range)
-- =============================================================

-- CHARACTERS <-> FACTIONS <-> CHAPTER range  (CHAR_FAC_CHAPTER_RANGE)
CREATE TABLE char_fac_chapter_range (
    character_id        INT NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE,
    faction_id          INT NOT NULL REFERENCES factions(faction_id) ON DELETE CASCADE,
    chapter_start_id    INT NOT NULL REFERENCES chapters(chapter_id) ON DELETE RESTRICT,
    chapter_end_id      INT          REFERENCES chapters(chapter_id) ON DELETE SET NULL,  -- NULL = still active
    role                TEXT,
    PRIMARY KEY (character_id, faction_id, chapter_start_id)
);

-- CHARACTERS <-> SEQUENCES <-> CHAPTER range  (CHAR_SEQ_CHAPTER_RANGE)
CREATE TABLE char_seq_chapter_range (
    character_id        INT NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE,
    sequence_id         INT NOT NULL REFERENCES sequences(sequence_id) ON DELETE CASCADE,
    chapter_start_id    INT NOT NULL REFERENCES chapters(chapter_id) ON DELETE RESTRICT,
    chapter_end_id      INT          REFERENCES chapters(chapter_id) ON DELETE SET NULL,  -- NULL = still active
    PRIMARY KEY (character_id, sequence_id, chapter_start_id)
);

-- CHARACTERS <-> ARTIFACTS <-> CHAPTER range  (CHAR_ART_CHAPTER_RANGE)
CREATE TABLE char_art_chapter_range (
    character_id        INT NOT NULL REFERENCES characters(character_id) ON DELETE CASCADE,
    artifact_id         INT NOT NULL REFERENCES artifacts(artifact_id) ON DELETE CASCADE,
    chapter_start_id    INT NOT NULL REFERENCES chapters(chapter_id) ON DELETE RESTRICT,
    chapter_end_id      INT          REFERENCES chapters(chapter_id) ON DELETE SET NULL,  -- NULL = still active
    acquisition_type    TEXT,
    PRIMARY KEY (character_id, artifact_id, chapter_start_id)
);

-- =============================================================
--  INDEXES  (for common query paths)
-- =============================================================

CREATE INDEX idx_volume_series          ON volumes(series_id);
CREATE INDEX idx_chapter_volume         ON chapters(volume_id);
CREATE INDEX idx_pathways_sefirot       ON pathways(sefirot_id);
CREATE INDEX idx_sequences_pathway      ON sequences(pathway_id);
CREATE INDEX idx_abilities_sequence     ON abilities(sequence_id);
CREATE INDEX idx_alias_character        ON alias(character_id);
CREATE INDEX idx_location_epoch_start   ON locations(epoch_start_id);
CREATE INDEX idx_character_epoch_start  ON characters(epoch_start_id);

CREATE INDEX idx_char_fac_char       ON char_fac_chapter_range(character_id);
CREATE INDEX idx_char_fac_faction    ON char_fac_chapter_range(faction_id);
CREATE INDEX idx_char_seq_char       ON char_seq_chapter_range(character_id);
CREATE INDEX idx_char_seq_seq        ON char_seq_chapter_range(sequence_id);
CREATE INDEX idx_char_art_char       ON char_art_chapter_range(character_id);
CREATE INDEX idx_char_art_art        ON char_art_chapter_range(artifact_id);
