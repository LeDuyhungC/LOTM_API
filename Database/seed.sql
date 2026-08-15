-- =============================================================
--  LOTM API - Seed Data
--  @author Duy-Hung Le
--  VERSION 0.1 / AUG 2026
--
--  Insertion order respects FK constraints:
--    series -> sefirots -> epochs -> materials -> artifacts -> factions
--    -> volumes -> chapters -> locations -> pathways -> sequences
--    -> abilities -> characters -> alias
--    -> UPDATE sefirots (great_old_one FK)
--    -> junction / ternary tables
-- =============================================================


-- =============================================================
--  1. SERIES
-- =============================================================

INSERT INTO series (name, description, release_date, end_date) VALUES
(
    'Lord of the Mysteries',
    'A dark fantasy web novel by Cuttlefish That Loves Diving. Klein Moretti, a modern-day graduate, transmigrates into the body of a down-on-his-luck citizen in a steampunk Victorian-era world teeming with Beyonders, ancient gods, and forbidden secrets.',
    '2018-03-01',
    '2021-07-21'
),
(
    'Lord of the Mysteries 2: Circle of Inevitability',
    '',
    '2022-03-01',
    NULL
);


-- =============================================================
--  2. SEFIROTS  (great_old_one set later — characters not yet created)
-- =============================================================

INSERT INTO sefirots (name, description) VALUES



-- =============================================================
--  3. EPOCHS
-- =============================================================

INSERT INTO epochs (name, start_year, end_year, description) VALUES
('Pre-Epoch', NULL, NULL, 'Earth in the 21st century.'),
('First Epoch',  NULL, NULL, 'Era before the creation of the world. Dominated by the Outer Gods.'),
('Second Epoch', NULL, NULL, 'Era dominated by the God of Knowledge and Wisdom. Ancient civilizations flourished.'),
('Third Epoch',  NULL, NULL, 'Era of the Tudor dynasty and other ancient kingdoms. Many Sealed Artifacts originate here.'),
('Fourth Epoch', NULL, NULL, 'The Cataclysm era, marked by divine wars, the fall of gods, and widespread destruction.'),
('Fifth Epoch',  1,    NULL, 'The current era. An age of steam and industry, roughly analogous to the Victorian period. Klein Moretti''s story takes place around year 1349-1352 of this epoch.');


-- =============================================================
--  4. MATERIALS  (Beyonder formula ingredients)
-- =============================================================

INSERT INTO materials (name, description, rarity) VALUES
('Siren Spinal Fluid',          'Purified spinal fluid from a Siren. A key ingredient in the Seer potion formula.',              'Uncommon'),
('Mutated Pituitary Gland',     'Pituitary gland from a mutated creature. Used in the Seer potion formula.',                    'Uncommon'),
('Hydra''s Gall',               'The bile gland of a Hydra. A critical ingredient in the Seer sequence formula.',               'Uncommon'),
('Golden Rose Stem',            'Stem from a rare golden rose with alchemical properties. Used in Seer formula.',                'Uncommon'),
('Clown Blood',                 'Blood extracted from a Clown-sequence Beyonder. Ingredient in the Clown potion.',              'Rare'),
('Magician''s Brain Tissue',    'Brain tissue from a Magician-sequence Beyonder. Ingredient in the Magician formula.',          'Rare'),
('Faceless Hide',               'Skin of a Faceless-sequence Beyonder, capable of shifting appearance.',                        'Very Rare'),
('Believer''s Heart',           'Heart of a devout true believer. Used in several mid-tier pathway formulas.',                  'Rare'),
('Devil''s Bone Powder',        'Ground bones of a Devil-type Beyonder. Highly volatile and dangerous to handle.',              'Rare'),
('Zombie Spinal Fluid',         'Spinal fluid from an undead Zombie-type creature. Used in Death pathway formulas.',            'Common'),
('Thousand-faced Hunter Leather','Skin from a Thousand-faced Hunter Beyonder. Extremely rare and prized.',                      'Very Rare'),
('Sea Monster Core',            'The mana core of a powerful sea creature. Used in Hanged Man pathway formulas.',               'Rare'),
('Silver Moon Dust',            'Dust collected under a full moon with silver properties. Used in Moon pathway formulas.',      'Uncommon'),
('Sunlight Crystal',            'A crystal that stores concentrated sunlight. Used in Sun pathway formulas.',                   'Uncommon');


-- =============================================================
--  5. ARTIFACTS
-- =============================================================

INSERT INTO artifacts (name, description, code_name) VALUES
('Azik''s Copper Whistle',          'A small copper whistle belonging to the ancient postman Azik Eggers. When blown, it can summon and command the undead within range. Given to Klein by Azik himself.',  'SL 0-07'),
('Interrogator',                    'A sealed artifact in the form of a revolver. Bullets fired compel targets to answer questions truthfully. Considered a Sequence 4 sealed artifact.',                   'SL 1-02'),
('Biological Poison Bottle',        'A sealed artifact containing a self-replicating biological toxin. Highly dangerous; classified as a Sequence 2 sealed artifact.',                                      'SL 2-34'),
('Antigonus Family Notebook',       'An ancient notebook containing classified knowledge of the Antigonus family. One of the most dangerous sealed artifacts. Possession alone causes madness over time.',  'SL 0-02'),
('Siren''s Whistle',                'A whistle that mimics the call of a Siren, capable of luring and entrancing nearby targets. Classified Sequence 2.',                                                  'SL 2-17'),
('Tinder''s Flames',                'A vial containing a fragment of the Eternal Blazing Sun''s fire. Devastating against darkness-type Beyonders.',                                                       'SL 1-11'),
('Nightmare Realm Painting',        'A painting that drags viewers into a Nightmare Realm. Associated with the Moon pathway.',                                                                              'SL 1-09'),
('Evernight Goddess Blessed Sword', 'A long sword blessed by the Evernight Goddess. Effective against the undead and creatures of darkness.',                                                               'SL 1-07');


-- =============================================================
--  6. FACTIONS
-- =============================================================

INSERT INTO factions (name, description) VALUES
('Tarot Club',                      'A secret gathering of Beyonders convened "Above the Grey Fog" and presided over by "The Fool" (Klein Moretti). Members use their Major Arcana titles to protect their true identities.'),
('Nighthawks',                      'A Beyonder hunter organization operating under the Church of the Evernight Goddess. Responsible for managing supernatural threats. Klein''s first affiliation, based in Tingen City.'),
('Machinery Hivemind',              'A secret Beyonder organization pursuing the merger of man and machine. Operates primarily in large industrial cities.'),
('Psychology Alchemists',           'A secret Beyonder organization specializing in mental abilities and psychological research. Audrey Hall is recruited by them.'),
('Twilight Hermit Order',           'An ancient and powerful secret society with obscure, long-term goals. Presence felt across multiple continents.'),
('The Rose School of Thought',      'A secret Beyonder organization associated with the Lovers pathway. Known for charm and manipulation. Cattleya holds rank within them.'),
('Church of the Evernight Goddess', 'One of the five major churches of the Northern Continent. Worships the Goddess of the Night. Known for charity, honesty, and combating the undead. Sponsor of the Nighthawks.'),
('Church of the Lord of Storms',    'A major church associated with the sea, storms, and seafarers. Popular among sailors and inhabitants of coastal regions.'),
('Church of the God of Steam',      'A church worshipping the God of Steam and Machinery. Associated with industrial technology and mechanical innovation.'),
('Church of the God of Knowledge',  'A church associated with the pursuit of knowledge, including forbidden and dangerous wisdom.'),
('Loen Kingdom',                    'The dominant political power in the Northern Continent, analogous to Victorian-era Britain. Home to most of the story''s primary events.'),
('Feysac Empire',                   'A large northern empire and rival to the Loen Kingdom, analogous to Tsarist Russia.'),
('Intis Republic',                  'A western republic with a revolutionary history, analogous to France. Strong presence of Beyonder circles.'),
('Abraham Family',                  'An ancient and powerful noble family with deep ties to Beyonder history and high-level sealed artifacts.'),
('Zaratul Family',                  'A secretive and feared family with an ancient connection to the Fool pathway. Their patriarch is of near-godlike power.');


-- =============================================================
--  7. VOLUMES  (series_id = 1 for Lord of the Mysteries)
-- =============================================================

INSERT INTO volumes (series_id, volume_number, title) VALUES



-- =============================================================
--  8. CHAPTERS  (a curated selection of key chapters)
--     volume_id: 1=Vol1 .. 9=Vol9
-- =============================================================

INSERT INTO chapters (volume_id, chapter_number, title) VALUES



-- =============================================================
--  9. LOCATIONS
-- =============================================================

INSERT INTO locations (name, region, description, parent_location_id, epoch_start_id) VALUES
-- Top-level (no parent)
('Northern Continent', NULL,
 'The primary continent where most of the story takes place. Home to the Loen Kingdom, Feysac Empire, and Intis Republic.',
 NULL, 1),
('Southern Continent', NULL,
 'A continent to the south, known for its warmer climates and distinct cultures.',
 NULL, 1),
('The Endless Sea', NULL,
 'The vast ocean separating the continents. Home to sea monsters, pirates, and maritime mysteries.',
 NULL, 1),

-- Regions within Northern Continent (parent_location_id = 1)
('Loen Kingdom', 'Northern Continent',
 'The dominant kingdom of the Northern Continent. Center of steam-powered industry and Beyonder politics.',
 1, 4),
('Feysac Empire', 'Northern Continent',
 'A large northern empire. Analogous to Tsarist Russia.',
 1, 4),
('Intis Republic', 'Northern Continent',
 'A western republic with a revolutionary history, analogous to France.',
 1, 4),
('Rorsted Archipelago', 'Southern Seas',
 'An archipelago in the southern seas, a colonial territory of the Loen Kingdom. Klein operates here as Gehrman Sparrow.',
 3, 4),

-- Cities within Loen Kingdom (parent_location_id = 4)
('Tingen City', 'Loen Kingdom',
 'A mid-sized industrial city. Where Klein Moretti first awakens as a Beyonder and joins the Nighthawks.',
 4, 4),
('Backlund', 'Loen Kingdom',
 'The capital and largest city of the Loen Kingdom, analogous to Victorian London. Center of high-level Beyonder activity.',
 4, 4),
('Pritz Harbor', 'Loen Kingdom',
 'A major port city in the Loen Kingdom. Gateway to maritime routes.',
 4, 4),

-- City within Rorsted Archipelago (parent_location_id = 7)
('Bayam', 'Rorsted Archipelago',
 'The main city of the Rorsted Archipelago. Klein operates here as the fearsome bounty hunter Gehrman Sparrow.',
 7, 4),

-- Supernatural / Beyond locations (no physical parent)
('Above the Grey Fog', NULL,
 'A mysterious metaphysical space accessible only to beings of immense power. Klein uses it as the Tarot Club meeting hall, projecting an ancient Outer God persona from here.',
 NULL, NULL),
('City of Silver', NULL,
 'A hidden community of Beyonders who have lived in isolation in the beyond for generations. Home of Derrick Berg.',
 NULL, 4),
('Hornacis Mountain Range', 'Northern Continent',
 'A dangerous mountain range home to various demonic cults and powerful Beyonders.',
 1, 4);


-- =============================================================
--  10. PATHWAYS  (sefirot_id maps 1:1 with sefirots insertion order)
-- =============================================================

INSERT INTO pathways (sefirot_id, names, color, description) VALUES

(1,  ARRAY['Fool', 'Visionary', 'Trickster'],          'Grey',    'The most mysterious pathway. Klein Moretti''s path. Associated with fate, trickery, and all-knowing mystique.'),
(2,  ARRAY['Magician', 'Elementalist'],                 'Red',     'Pathway of fire and elemental forces. Practical and battle-focused.'),
(3,  ARRAY['High Priestess', 'Knower'],                 'Silver',  'Pathway of silence and forbidden knowledge.'),
(4,  ARRAY['Empress', 'Life'],                          'Green',   'Pathway of life force, plants, and nature.'),
(5,  ARRAY['Emperor', 'Authoritarian'],                 'Gold',    'Pathway of authority, control, and governance.'),
(6,  ARRAY['Hierophant', 'Blessed'],                    'White',   'Pathway of faith, prayer, and divine blessing.'),
(7,  ARRAY['Lovers', 'Seducer'],                        'Pink',    'Pathway of charm, desire, and mental seduction. Rosago''s pathway.'),
(8,  ARRAY['Chariot', 'Warrior'],                       'Bronze',  'Pathway of physical strength and combat.'),
(9,  ARRAY['Justice', 'Spectator'],                     'Purple',  'Pathway of law, judgment, and mental abilities. Audrey Hall''s pathway.'),
(10, ARRAY['Hermit', 'Calamity'],                       'Brown',   'Pathway of immense wisdom and catastrophic destructive power.'),
(11, ARRAY['Wheel of Fortune', 'Gambler'],              'Yellow',  'Pathway of luck, probability, and fate.'),
(12, ARRAY['Strength', 'Beastmaster'],                  'Orange',  'Pathway of wild power and animal affinity.'),
(13, ARRAY['Hanged Man', 'Sailor', 'Seafarer'],         'Blue',    'Pathway of the sea and sacrifice. Alger Wilson''s pathway.'),
(14, ARRAY['Death', 'Undying'],                         'Black',   'Pathway of death and spiritual power. Miss Sharron''s pathway.'),
(15, ARRAY['Temperance', 'Alchemist', 'Machinery'],     'Cyan',    'Pathway of balance, alchemy, and the fusion of man and machine.'),
(16, ARRAY['Devil', 'Demon'],                           'Crimson', 'Pathway of desire, corruption, and demonic power.'),
(17, ARRAY['Tower', 'Lightning'],                       'Violet',  'Pathway of destruction, lightning, and unstoppable force.'),
(18, ARRAY['Star', 'Astrologer'],                       'Indigo',  'Pathway of the cosmos, astral travel, and dreams. Cattleya''s pathway.'),
(19, ARRAY['Moon', 'Nightmare'],                        'Silver',  'Pathway of the night, illusions, and lunar power. Emlyn White''s pathway.'),
(20, ARRAY['Sun', 'Light'],                             'Gold',    'Pathway of solar light, truth, and purification. Derrick Berg''s pathway.'),
(21, ARRAY['Judgement', 'Angel'],                       'White',   'Pathway of divine judgment and angelic power.'),
(22, ARRAY['World', 'Space'],                           'Void',    'Pathway of totality and omnipresence. The most complete of all pathways.');

-- =============================================================
--  11. SEQUENCES  (position 9 = entry level, 0 = apex/godhood)
--
--  Pathway IDs (by insertion order above):
--    Fool=1  Magician=2  HighPriestess=3  Empress=4  Emperor=5
--    Hierophant=6  Lovers=7  Chariot=8  Justice=9  Hermit=10
--    WheelOfFortune=11  Strength=12  HangedMan=13  Death=14
--    Temperance=15  Devil=16  Tower=17  Star=18  Moon=19  Sun=20
--    Judgement=21  World=22
-- =============================================================

-- ── The Fool Pathway (pathway_id = 1) — Klein Moretti ────────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(1, 9, ARRAY['Seer'],                   'Entry level. Grants divination, danger intuition, spirit vision, and minor luck manipulation.'),
(1, 8, ARRAY['Clown'],                  'Gains abilities of performance, deception, laughter plague, and perfect imitation.'),
(1, 7, ARRAY['Magician'],               'Gains powerful illusionary abilities and more complex mystical manipulation.'),
(1, 6, ARRAY['Faceless'],               'Can perfectly replicate the appearance and surface abilities of any target.'),
(1, 5, ARRAY['Nimblewright Master'],    'Can create and remotely control nimblewright mechanical constructs.'),
(1, 4, ARRAY['Bizarro Sorcerer'],       'Reality-bending powers and bizarre transformations that defy natural laws.'),
(1, 3, ARRAY['Miracle Invoker'],        'Can invoke large-scale miracles and meaningfully alter fate itself.'),
(1, 2, ARRAY['Attendant of Mysteries'],'Near-divine servant of cosmic mystery. Power approaches that of lesser gods.'),
(1, 1, ARRAY['Mystery Pryer'],          'One step below true godhood. Bridges the mortal and divine realms.'),
(1, 0, ARRAY['The Fool'],              'Apex of the pathway. A true God seated above the grey fog.');

-- ── Justice Pathway (pathway_id = 9) — Audrey Hall ──────────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(9, 9, ARRAY['Spectator'],              'Gains passive emotion reading and the ability to observe surface thoughts.'),
(9, 8, ARRAY['Telepathist'],            'Gains limited telepathy and the ability to subtly plant suggestions.'),
(9, 7, ARRAY['Psychiatrist'],           'Gains deeper mental influence and the ability to reshape emotional states.'),
(9, 6, ARRAY['Hypnotist'],              'Gains powerful hypnosis, mental domination, and memory manipulation.'),
(9, 5, ARRAY['Witch'],                  'Gains formidable mental powers and a degree of fate-level influence.'),
(9, 4, ARRAY['Arbiter'],                'Embodies justice and judgment; can enforce psychic verdicts on targets.'),
(9, 3, ARRAY['Judge'],                  'Can pronounce and supernaturally enforce absolute judgments.'),
(9, 2, ARRAY['Justiciar'],              'Near-divine arbiter operating at the level of cosmic law.'),
(9, 1, ARRAY['Dark Side of the Universe'], 'A terrifying existence embodying the shadow side of justice.'),
(9, 0, ARRAY['Justice'],               'Apex of the pathway. The Goddess of Justice herself.');

-- ── Hanged Man Pathway (pathway_id = 13) — Alger Wilson ─────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(13, 9, ARRAY['Sailor'],                'Entry level. Gains water-affinity, superior navigation, and sea-creature empathy.'),
(13, 8, ARRAY['Folk of Rage'],          'Gains enhanced physical strength and a berserker fury amplified at sea.'),
(13, 7, ARRAY['Seafarer'],              'Gains mastery over sea currents, waves, and aquatic lifeforms.'),
(13, 6, ARRAY['Catcher'],               'Gains the ability to restrain and immobilize powerful supernatural entities.'),
(13, 5, ARRAY['Squall'],                'Can summon and ride powerful sea storms. Significant area-effect power.'),
(13, 4, ARRAY['Cataclysmic Interrer'],  'Can invoke catastrophic oceanic events: maelstroms, tsunamis.'),
(13, 3, ARRAY['Beyonder King of the Sea'], 'Commands a vast oceanic domain and all creatures within it.'),
(13, 2, ARRAY['Pirate Admiral'],        'Commands immense oceanic forces and can alter weather on a continental scale.'),
(13, 1, ARRAY['Sea King'],              'Near-divine ruler of all seas. Power is absolute within ocean domains.'),
(13, 0, ARRAY['Hanged Man'],            'Apex of the pathway. God of the Sea and Sacrifice.');

-- ── Sun Pathway (pathway_id = 20) — Derrick Berg ────────────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(20, 9, ARRAY['Bard'],                  'Entry level. Gains enhanced music abilities, inspiring light, and minor solar empathy.'),
(20, 8, ARRAY['Light Suppliant'],       'Gains light-based healing, purification, and resistance to darkness.'),
(20, 7, ARRAY['Solar High Priest'],     'Conducts powerful solar rituals and channels blinding divine light.'),
(20, 6, ARRAY['Sun Hunter'],            'Hunts creatures of darkness with concentrated solar-powered abilities.'),
(20, 5, ARRAY['Dawn Paladin'],          'A radiant warrior with powerful light attacks and a strong healing aura.'),
(20, 4, ARRAY['Unshadowed'],            'Completely immune to all darkness and shadow-based powers and attacks.'),
(20, 3, ARRAY['Light Emperor'],         'Commands armies of light and can purge entire regions of darkness.'),
(20, 2, ARRAY['Eternal Blazing Sun''s Apostle'], 'Near-divine emissary of the Sun god. Radiance visible from great distances.'),
(20, 1, ARRAY['Saintess of White Night'], 'Bearer of divine solar light. One step removed from full godhood.'),
(20, 0, ARRAY['The Sun'],              'Apex of the pathway. The Eternal Blazing Sun, God of Light.');

-- ── Death Pathway (pathway_id = 14) — Miss Sharron ──────────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(14, 9, ARRAY['Gravedigger'],           'Entry level. Gains abilities over death rituals and minor undead command.'),
(14, 8, ARRAY['Corpse Collector'],      'Can reanimate and control multiple corpses simultaneously.'),
(14, 7, ARRAY['Undying'],               'Gains extraordinary resistance to injury and death. Regeneration at high speed.'),
(14, 6, ARRAY['Wraith'],                'Can shift into a partially incorporeal wraith-like state.'),
(14, 5, ARRAY['Zombie'],                'Gains powerful undead-like physical abilities while retaining consciousness.'),
(14, 4, ARRAY['Death Consul'],          'Commands large armies of undead and can project a death aura over a wide area.'),
(14, 3, ARRAY['Gatekeeper'],            'Guards and controls the boundary between the living and the dead.'),
(14, 2, ARRAY['Ferryman'],              'Guides souls and commands the very passage of death itself.'),
(14, 1, ARRAY['Death'],                 'Embodies death itself. One step from ascension to godhood.'),
(14, 0, ARRAY['Death'],                'Apex of the pathway. God of Death.');

-- ── Star Pathway (pathway_id = 18) — Cattleya ───────────────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(18, 9, ARRAY['Astrologer'],            'Entry level. Gains stargazing prophetic abilities and basic astral sense.'),
(18, 8, ARRAY['Midnight Poet'],         'Gains powerful dream-walking and creative reality-bending through words.'),
(18, 7, ARRAY['Dreamless'],             'Can enter and manipulate the dreamscape of others.'),
(18, 6, ARRAY['Wanderer'],              'Can astrally project across great distances and slip between planes.'),
(18, 5, ARRAY['Discerner'],             'Gains deep cosmic insight and the ability to perceive hidden truths.'),
(18, 4, ARRAY['Secrets Sorcerer'],      'Commands classified cosmic secrets and forbidden stellar knowledge.'),
(18, 3, ARRAY['Prophet'],               'Can perceive fixed points of fate and make near-certain predictions.'),
(18, 2, ARRAY['Lore Master'],           'Commands near-complete knowledge of the cosmos and its hidden history.'),
(18, 1, ARRAY['Inevitability'],         'Embodies the concept of inevitability itself in the universe.'),
(18, 0, ARRAY['The Star'],             'Apex. God of the Stars and Cosmic Fate.');

-- ── Moon Pathway (pathway_id = 19) — Emlyn White ────────────
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(19, 9, ARRAY['Vampire'],               'Entry level. Gains vampiric traits: strength, speed, blood-drinking, sunlight sensitivity.'),
(19, 8, ARRAY['Shaman King'],           'Gains shamanic powers: spirit communication, totemic animal bonding.'),
(19, 7, ARRAY['Zombie'],                'Gains powerful undead-like physical abilities with retained consciousness.'),
(19, 6, ARRAY['Zombie Sovereign'],      'Commands lesser undead and gains formidable territorial domain abilities.'),
(19, 5, ARRAY['Nightmare'],             'Can pull targets into personalized nightmares born from their deepest fears.'),
(19, 4, ARRAY['Howler'],                'Emits devastating sound-based attacks that resonate with primal lunar energy.'),
(19, 3, ARRAY['Moon Priest'],           'Commands the moon''s tides and the rhythms of nature tied to lunar cycles.'),
(19, 2, ARRAY['Lunar Realm Master'],    'Commands a full lunar domain with near-divine authority over night and illusions.'),
(19, 1, ARRAY['Moon Witch'],            'Near-divine embodiment of the moon. Controls night itself.'),
(19, 0, ARRAY['The Moon'],             'Apex of the pathway. God of the Moon and Nightmares.');


-- =============================================================
--  12. ABILITIES
--  Sequence IDs (SERIAL, by insertion order above, 10 per pathway):
--    Fool:    Seer=1  Clown=2  Magician=3  Faceless=4  NimblewrightMaster=5
--             BizarroSorcerer=6  MiracleInvoker=7  AttendantOfMysteries=8
--             MysteryPryer=9  TheFool=10
--    Justice: Spectator=11  Telepathist=12  Psychiatrist=13  Hypnotist=14
--             Witch=15  Arbiter=16  Judge=17  Justiciar=18  DarkSide=19  Justice=20
--    Hanged:  Sailor=21  FolkOfRage=22  Seafarer=23  Catcher=24  Squall=25
--             CataclysmicInterrer=26  BeyonderKing=27  PirateAdmiral=28  SeaKing=29  HangedMan=30
--    Sun:     Bard=31  LightSuppliant=32  SolarHighPriest=33  SunHunter=34  DawnPaladin=35
--             Unshadowed=36  LightEmperor=37  Apostle=38  SaintessOfWhiteNight=39  TheSun=40
--    Death:   Gravedigger=41  CorpseCollector=42  Undying=43  Wraith=44  Zombie=45
--             DeathConsul=46  Gatekeeper=47  Ferryman=48  Death=49  Death(god)=50
--    Star:    Astrologer=51  MidnightPoet=52  Dreamless=53  Wanderer=54  Discerner=55
--             SecretsSorcerer=56  Prophet=57  LoreMaster=58  Inevitability=59  TheStar=60
--    Moon:    Vampire=61  ShamanKing=62  Zombie(moon)=63  ZombieSovereign=64  Nightmare=65
--             Howler=66  MoonPriest=67  LunarRealmMaster=68  MoonWitch=69  TheMoon=70
-- =============================================================

-- ── Seer (sequence_id = 1) ────────────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(1, 'Divination',         'Active',  'Perform rituals to gain prophetic visions or answers about future events and hidden truths.'),
(1, 'Danger Intuition',   'Passive', 'Instinctively perceive nearby danger moments before it manifests — a constant passive warning system.'),
(1, 'Spirit Vision',      'Active',  'Overlay spiritual sight onto physical sight to perceive spiritual entities and the hidden spiritual world.'),
(1, 'Good Luck',          'Passive', 'Minor probability manipulation that subtly nudges random outcomes in the Seer''s favor.');

-- ── Clown (sequence_id = 2) ──────────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(2, 'Performance Art',    'Active',  'Supernatural performance abilities that directly affect emotions and cognition of an audience.'),
(2, 'Imitation',          'Active',  'Perfectly mimic another''s voice, mannerisms, and behavioral patterns.'),
(2, 'Laughter Plague',    'Active',  'Inflict an uncontrollable, paralyzing laughter on one or more targets.'),
(2, 'Humor Distortion',   'Active',  'Distort the target''s sense of what is real or funny, causing disorientation and confusion.');

-- ── Magician (sequence_id = 3) ───────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(3, 'Illusion',           'Active',  'Create powerful multi-sensory illusions that are indistinguishable from reality.'),
(3, 'Misdirection',       'Active',  'Redirect the focus and attention of multiple targets simultaneously.'),
(3, 'Stage Magic',        'Active',  'Enhanced sleight-of-hand and conjuration at a supernatural level of precision.');

-- ── Faceless (sequence_id = 4) ───────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(4, 'Perfect Mimicry',    'Active',  'Completely replicate the physical appearance, voice, and surface aura of any target.'),
(4, 'Ability Copy',       'Active',  'Copy a surface-level beyonder ability from the target being mimicked.');

-- ── Spectator (sequence_id = 11) ─────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(11, 'Emotion Reading',         'Passive', 'Passively sense the emotions of anyone within proximity without active concentration.'),
(11, 'Surface Thought Reading', 'Active',  'Focus on a target to read their surface-level active thoughts.');

-- ── Telepathist (sequence_id = 12) ───────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(12, 'Telepathy',         'Active',  'Establish a mental link with a target to exchange thoughts or plant simple suggestions.'),
(12, 'Memory Probe',      'Active',  'Probe the accessible memories of a willing or weakened target.');

-- ── Sailor (sequence_id = 21) ────────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(21, 'Aquatic Affinity',      'Passive', 'Enhanced swimming speed, endurance, and instinctive sea navigation.'),
(21, 'Sea Creature Empathy',  'Active',  'Communicate intent with and receive empathy from marine animals.'),
(21, 'Water Manipulation',    'Active',  'Control small volumes of water with focused effort.');

-- ── Gravedigger (sequence_id = 41) ───────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(41, 'Corpse Sense',          'Passive', 'Instinctively sense the presence and rough power level of nearby corpses and undead.'),
(41, 'Minor Undead Command',  'Active',  'Issue simple commands to weak undead creatures in the vicinity.'),
(41, 'Death Ritual',          'Active',  'Perform burial rituals that prevent corpses from becoming uncontrolled undead.');

-- ── Bard (sequence_id = 31) ──────────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(31, 'Inspiring Song',        'Active',  'Perform music that supernaturally boosts the morale and physical performance of allies.'),
(31, 'Light Affinity',        'Passive', 'A gentle aura of light naturally surrounds the Bard, and minor light manipulation is possible.'),
(31, 'Solar Sense',           'Passive', 'Acute awareness of the sun''s position and strength at all times. Enhanced during daylight.');

-- ── Vampire (sequence_id = 61) ───────────────────────────────
INSERT INTO abilities (sequence_id, name, type, description) VALUES
(61, 'Vampiric Strength',     'Passive', 'Greatly enhanced physical strength and reflexes, especially during night hours.'),
(61, 'Blood Drain',           'Active',  'Drain blood from a target to heal wounds and restore energy.'),
(61, 'Sunlight Weakness',     'Passive', 'Vulnerability to direct sunlight — the drawback of the Vampire sequence.'),
(61, 'Bat Transformation',    'Active',  'Transform partially or fully into a bat or bat-like form for flight and echolocation.');


-- =============================================================
--  13. CHARACTERS
-- =============================================================

INSERT INTO characters (name, description, is_beyond_god, epoch_start_id, epoch_end_id) VALUES
('Klein Moretti',
 'The main protagonist of Lord of the Mysteries. A university graduate from modern Earth who transmigrates into the Loen Kingdom. He eventually ascends the Fool pathway and takes the seat of the ancient Outer God, The Fool.',
 TRUE, 4, NULL),

('Audrey Hall',
 'The daughter of a prominent Loen noble family. Secretly a Beyonder who joins the Tarot Club as "The Justice." She walks the Justice pathway and is recruited by the Psychology Alchemists.',
 FALSE, 4, NULL),

('Alger Wilson',
 'A privateer captain with a dark past. A seasoned Beyonder who later joins the Tarot Club as "The Hanged Man." He walks the Hanged Man pathway and has complex loyalties.',
 FALSE, 4, NULL),

('Derrick Berg',
 'A young Beyonder from the City of Silver, a hidden community that has existed in isolation for generations. Joins the Tarot Club as "The Sun" on the Sun pathway.',
 FALSE, 4, NULL),

('Emlyn White',
 'A pure-blooded Vampire, proud of his bloodline and initially arrogant. Joins the Tarot Club as "The Moon" on the Moon pathway.',
 FALSE, 4, NULL),

('Cattleya',
 'A powerful and enigmatic female Beyonder and captain of the ship Spirit of Pleasure. A high-ranking Rose Bishop of the Rose School of Thought. Joins the Tarot Club as "The Hermit" on the Star pathway.',
 FALSE, 4, NULL),

('Fors Wall',
 'A writer who becomes a Beyonder. Represents "The Star" in the Tarot Club meetings.',
 FALSE, 4, NULL),

('Xio Derecha',
 'A bounty hunter and close partner of Fors Wall. Becomes a Beyonder and participates in Tarot Club activities.',
 FALSE, 4, NULL),

('Miss Sharron',
 'A cold and powerful Beyonder. One of the early members of the Tarot Club representing "The World." She walks the Death pathway.',
 FALSE, 4, NULL),

('Leonard Mitchell',
 'A Nighthawk colleague of Klein in Tingen City who acts as his mentor. Harbors a hidden identity connected to one of the most powerful figures in the world.',
 FALSE, 4, NULL),

('Azik Eggers',
 'The ancient postman of supernatural origin. He gifts Klein the copper whistle. His true nature is deeply connected to the Death pathway and the ancient world.',
 FALSE, 2, NULL),

('The Ancient Fool',
 'The Outer God who originally held the seat of The Fool before Klein Moretti. A being of immense power who set events in motion across millennia.',
 TRUE, 1, 4),

('Rosago',
 'A powerful Beyonder on the Lovers pathway and a high-ranking figure in a major organization. An early antagonist whose downfall is orchestrated by Klein.',
 FALSE, 4, 4);


-- =============================================================
--  14. ALIASES
-- =============================================================

INSERT INTO alias (character_id, name, description, volume_start_id, volume_end_id) VALUES
-- Klein Moretti (character_id = 1)
(1, 'The Fool',              'Klein''s primary persona in the Tarot Club. He poses as an all-knowing, ancient Outer God to his fellow members.',       1, NULL),
(1, 'Gehrman Sparrow',       'Klein''s fearsome bounty hunter alias in the Rorsted Archipelago. Known as one of the most dangerous Beyonders.',         2, NULL),
(1, 'Detective Moriarty',    'A detective alias Klein uses while investigating cases in Backlund.',                                                      2, NULL),
-- Audrey Hall (character_id = 2)
(2, 'The Justice',           'Audrey''s role in the Tarot Club, named for the Major Arcana card.',                                                      1, NULL),
-- Alger Wilson (character_id = 3)
(3, 'The Hanged Man',        'Alger''s role in the Tarot Club.',                                                                                        1, NULL),
-- Derrick Berg (character_id = 4)
(4, 'The Sun',               'Derrick''s role in the Tarot Club.',                                                                                      2, NULL),
-- Emlyn White (character_id = 5)
(5, 'The Moon',              'Emlyn''s role in the Tarot Club.',                                                                                        2, NULL),
-- Cattleya (character_id = 6)
(6, 'The Hermit',            'Cattleya''s role in the Tarot Club.',                                                                                     2, NULL),
(6, 'Rose Bishop',           'Cattleya''s rank within the Rose School of Thought.',                                                                     1, NULL),
-- Fors Wall (character_id = 7)
(7, 'The Star',              'Fors''s role in the Tarot Club.',                                                                                         2, NULL),
-- Miss Sharron (character_id = 9)
(9, 'The World',             'Miss Sharron''s role in the early Tarot Club. Position later taken by Klein in field operations.',                        1, 3),
-- Leonard Mitchell (character_id = 10)
(10,'Blazing Hearthfire',    'One of Leonard''s known Beyonder aliases.',                                                                               1, NULL);


-- =============================================================
--  15. UPDATE SEFIROTS — assign great_old_one now that characters exist
--      The Ancient Fool (character_id = 12) -> sefirot_id = 1 (The Fool)
-- =============================================================

UPDATE sefirots
SET great_old_one = 12
WHERE sefirot_id = 1;



