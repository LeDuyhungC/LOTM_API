-- =============================================================
--  LOTM API - Seed Data
--  @author Duy-Hung Le
--  VERSION 0.1 / AUG 2026


-- =============================================================
--  1. SERIES
-- =============================================================

INSERT INTO series (name, description, release_date, end_date) VALUES
(
    'Lord of the Mysteries',
    'A modern man named Zhou Mingrui reincarnates into an alternate world as Klein Moretti, navigating secret occult societies, powerful orthodox churches, and a dangerous path to godhood while seeking a way home.',
    '2018-04-01',
    '2020-04-01'
),
(
    'Lord of the Mysteries 2: Circle of Inevitability',
    'It follows protagonist Lumian Lee in a 1930s France-inspired setting blending vintage European aesthetics with cosmic horror,  as a narrative bridge while Klein Moretti remains asleep',
    '2023-03-04',
    NULL
);


-- =============================================================
--  2. SEFIROTS  (great_old_one set later — characters not yet created)
-- =============================================================

INSERT INTO sefirots (name, description) VALUES
('Sefirah Castle', 'Governs the concepts of history, space, destiny, and the Spirit World.'),
('Chaos Sea', 'Governs the concepts of omniscience, omnipotence, mind, and the Astral World.'),
('River of Eternal Darkness', 'Governs the transition of life, erasure, and absolute quiet.'),
('City of Calamity', 'Governs pure chaos, disaster, conflict, and physical devastation.'),
('Nation of Disorder', 'Governs the creation, manipulation, and exploitation of universal laws.'),
('Key of Light', 'Governs probability, luck, and the flow of time.'),
('Brood Hive', 'Governs reproduction, evolution, decay, and the physical world.'),
('Knowledge Moor', 'Governs information, hidden knowledge, and mystical logic.'),
('Tenebrous World', 'Governs inner shadows, taboos, curses, and emotional manipulation.');

-- =============================================================
--  3. EPOCHS
-- =============================================================

INSERT INTO epochs (epoch_id, name, years, description) VALUES
(0, 'Pre-Epoch', NULL, 'The beginning of time to when the Original Creator partially woke up and destroyed what is present day earth killing all of human civilization starting the first epoch'),
(1, 'First Epoch', 981, 'The Age of Chaos, It began when the Original Creator fully awakened from slumber, destroying modern human civilization and shattering into the 22 Beyonder pathways and various Sephiroths.'),
(2, 'Second Epoch',2561, 'The Dark Epoch or the Age of the Ancient Gods, It was a brutal era where humanity was weak and enslaved, and the world was ruled completely by powerful non-human races and innate Ancient Gods. The chaos of this brutal era eventually shifted during the cataclysmic conflicts that led to the rise of the Ancient Sun God.'),
(3, 'Third Epoch', 1086 , 'Humanity finally stepped out from under the shadows and slavery of older, tyrannical alien races, outpacing them in growth. The epoch ended in a massive cataclysm triggered when the Ancient Sun God was betrayed by His own Kings of Angels and faced internal mental collapse from the awakening of the Primordial God Almighty. Civilization reset, and the continents were permanently fractured.'),
(4, 'Fourth Epoch', 1233, 'the Epoch of the Gods. It began with the death of the Ancient Sun God and the appearance of the Second Blasphemy Slate, leading to an era where Sequence 0 deities and angels openly walked the earth and fought for supreme rule. Soloman first empire founded after the fall of the Ancient Sun God united the leftover continents after the collapse of the Soloman empire split empires were formed Soloman, Tudor Trunsoest, and Balam Empires. War of the Four Emperors resulted in the madness and death of the contending emperors, the reshaping of the continent''s political landscape, and the establishment of the current orthodox churches and kingdoms of the Fifth Epoch.'),
(5,'Fifth Epoch',  1349, 'The current era. An age of steam and industry, roughly analogous to the Victorian period. Klein Moretti''s story takes place around year 1349-1352 of this epoch.');


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
('Sunlight Crystal',            'A crystal that stores concentrated sunlight. Used in Sun pathway formulas.',                   'Uncommon'),
('Lavos Squid Blood',           'Blood from a mutant Lavos Squid in the Sunken Sea, a primary ingredient in the Seer potion formula.', 'Uncommon'),
('Stella Aqua Crystal',         'A glowing aquatic crystal that resonates with spiritual energy, primary ingredient for Seer.', 'Uncommon'),
('Hornacis Shadow Wolf Horn',   'A single horn of a shadow wolf from the Hornacis mountain range, primary ingredient for Clown.', 'Rare'),
('Real Clown Fish Blood',       'Blood from a true deep-sea Clown Fish, essential catalyst for the Clown potion.',             'Uncommon'),
('Mist Stalker Characteristic', 'Beyonder characteristic of a Mist Stalker, primary ingredient for Magician.',                 'Rare'),
('Shadow Wolf Gland',           'A specialized gland from an adult Shadow Wolf, primary ingredient for Faceless.',             'Very Rare'),
('Spirit Eater Core',           'The core of an ancient spiritual parasite, primary ingredient for Marionettist.',              'Very Rare'),
('Golden-eyed Tree Frog Gland', 'Gland of a rare golden-eyed tree frog, primary ingredient for Marionettist.',                 'Very Rare'),
('Dragon Eyeball',              'Preserved eyeball of a Mind Dragon, primary ingredient for Spectator pathway potions.',        'Very Rare'),
('Rainbow Salamander Gland',    'Pituitary gland from a rainbow salamander, primary ingredient for Telepathist.',              'Rare'),
('Wind Spirit Tree Fruit',      'Fruit of the legendary wind spirit tree, primary ingredient for Sailor pathway.',              'Uncommon');


-- =============================================================
--  5. ARTIFACTS
-- =============================================================

INSERT INTO artifacts (name, description, code_name) VALUES
('Azik''s Copper Whistle',          'A small copper whistle belonging to the ancient postman Azik Eggers. When blown, it can summon and command the undead within range. Given to Klein by Azik himself.',  null),
('Interrogator',                    'A sealed artifact in the form of a revolver. Bullets fired compel targets to answer questions truthfully. Considered a Sequence 4 sealed artifact.',                   '3-0782'),
('Biological Poison Bottle',        'A sealed artifact containing a self-replicating biological toxin. Highly dangerous; classified as a Sequence 2 sealed artifact.',                                      '3-0622'),
('Antigonus Family Notebook',       'An ancient notebook containing classified knowledge of the Antigonus family. One of the most dangerous sealed artifacts. Possession alone causes madness over time.',  null),
('Siren''s Whistle',                'A whistle that mimics the call of a Siren, capable of luring and entrancing nearby targets. Classified Sequence 2.',                                                  null),
('Tinder''s Flames',                'A vial containing a fragment of the Eternal Blazing Sun''s fire. Devastating against darkness-type Beyonders.',                                                       null),
('Nightmare Realm Painting',        'A painting that drags viewers into a Nightmare Realm. Associated with the Moon pathway.',                                                                              '1-42'),
('Evernight Goddess Blessed Sword', 'A long sword blessed by the Evernight Goddess. Effective against the undead and creatures of darkness.',                                                               '0-012'),
('Creeping Hunger',                 'A human-skin glove originally owned by Pirate Admiral Qilangos and later Klein Moretti. Grazes the souls of up to five Beyonders and utilizes their powers, requiring a sacrifice of human flesh daily unless fed with criminals.', null),
('Arrodes',                         'A silver ancient mirror with patterns of eyes on the back. Requires users to answer an embarrassing or dangerous truth after asking it a question, but treats Klein Moretti with extreme reverence.', null),
('Staff of the Stars',              'A dark staff inlaid with gems crafted by Klein Moretti combining the Box of the Great Old Ones and a Key of Stars characteristic, allowing instant teleportation to any place recorded or imagined.', null),
('Word of the Sea',                 'A white bone scepter embedded with a blue jewel possessing the power of a Sequence 5 Ocean Songster, creating lightning storms and summoning water creatures.', '3-1111'),
('Leymano''s Travels',              'A bronze-covered notebook created by Mr. Fool for Miss Magician (Fors Wall) that records and replays Beyonder abilities when pages are torn or activated.', null),
('Master Key',                      'A brass key artifact belonging to the Apprentice pathway that can unlock almost any physical or spiritual door, but causes the owner to lose their sense of direction and get lost.', null),
('Sun Brooch',                      'A golden brooch warm to the touch that radiates purifying sunlight and grants immunity to dark corruption, crafted from the Sun pathway.', null),
('0-08',                            'A normal-looking feather quill that automatically writes stories into reality, orchestrating coincidences and controlling fates. Used by Ince Zangwill.', '0-08'),
('Death Consul Ring',               'An ancient copper ring carrying the chill of the underworld belonging to Death Consul Azik Eggers.', null);


-- =============================================================
--  6. FACTIONS
-- =============================================================

INSERT INTO factions (name, description) VALUES
('Tarot Club',                      'A secret gathering of Beyonders convened "Above the Grey Fog" and presided over by "The Fool" (Klein Moretti). Members use their Major Arcana titles to protect their true identities.'),
('Nighthawks',                      'A Beyonder hunter organization operating under the Church of the Evernight Goddess. Responsible for managing supernatural threats.'),
('Machinery Hivemind',              'A Beyonder organization pursuing the merger of man and machine. Operates primarily in large industrial cities and follows the God of Steam.'),
('Mandated Punisher',               'A Beyonder organization that master the art of sailing and navigation. A powerful Navy that follows the Tyrant Sea god'),
('Psychology Alchemists',           'A Beyonder organization specializing in mental abilities and psychological.'),
('Twilight Hermit Order',           'An ancient and powerful secret society with obscure, long-term goals. Presence felt across multiple continents.'),
('The Rose School of Thought Indulgence',      'Known for there terrorism throughout the North and South continent with acts like sacrificial killing, frenzy murder, and aggression. Worships primal desires as the source of there power'),
('The Rose School of Thought Temperance',       'The other half of the The Rose School of Thought focuses on containing desires and emotions when the time is needed release the pent up emotion for relentless power. This splinter faction is hunted down by the Indulgence faction to near extinction.'),
('Church of the Evernight Goddess', 'One of the five major churches of the Northern Continent. Worships the Goddess of the Night. Known for charity, honesty, and combating the undead. Sponsor of the Nighthawks.'),
('Church of the Lord of Storms',    'A major church associated with the sea, storms, and seafarers. Popular among sailors and inhabitants of coastal regions.'),
('Church of the God of Steam',      'A church worshipping the God of Steam and Machinery. Associated with industrial technology and mechanical innovation. Sponsor of the Machinary Hivemind'),
('Church of the God of Knowledge',  'A church associated with the pursuit of knowledge, including forbidden and dangerous wisdom.'),
('Loen Kingdom',                    'The dominant political power in the Northern Continent, analogous to Victorian-era Britain. Home to most of the story''s primary events.'),
('Feysac Empire',                   'A large northern empire and rival to the Loen Kingdom, analogous to Tsarist Russia.'),
('Intis Republic',                  'A western republic with a revolutionary history, analogous to France. Strong presence of Beyonder circles.'),
('Abraham Family',                  'An ancient and powerful noble family with deep ties to Beyonder history and high-level sealed artifacts.'),
('Zaratul Family',                  'A secretive and feared family with an ancient connection to the Fool pathway. Their patriarch is of near-godlike power.'),
('City of Silver',                  'An isolated ancient human city located in the Forsaken Land of the Gods that has survived the Dark Cataclysm for thousands of years under constant darkness.'),
('Aurora Order',                    'A fanatical secret organization that worships the True Creator, infamous for extreme rituals, sacrificial madness, and listening to the ravings of god.'),
('Secret Order',                    'An ancient secret society led by the Zaratul family, holding secrets and formulas of the Seer pathway.'),
('MI9',                             'Military Intelligence Section 9 of the Loen Kingdom, dealing with national security, espionage, and official Beyonder policing.');


-- =============================================================
--  7. VOLUMES  (series_id = 1 for Lord of the Mysteries)
-- =============================================================

COPY volumes (series_id, volume_number, title)
FROM '/docker-entrypoint-initdb.d/volumes.csv'
DELIMITER ',' CSV HEADER;


-- =============================================================
--  8. CHAPTERS  (a curated selection of key chapters)
--     volume_id: 1=Vol1 .. 9=Vol9
-- =============================================================

COPY chapters (volume_id, chapter_number, title)
FROM '/docker-entrypoint-initdb.d/chapters.csv'
DELIMITER ',' CSV HEADER;


-- =============================================================
--  9. LOCATIONS
-- =============================================================

INSERT INTO locations (name, region, description, parent_location_id, epoch_start_id, epoch_end_id) VALUES
-- Top-level (no parent)
-- ID: 1
('Northern Continent', NULL,
 'The primary continent where most of the story takes place. Home to the Loen Kingdom, Feysac Empire, and Intis Republic of the 5th epoch.',
 NULL, 1, NULL),
-- ID: 2
('Southern Continent', NULL,
 'A continent to the south, known for its warmer climates and distinct cultures.',
 NULL, 1, NULL),
-- ID: 3
('Eastern Continent', NULL,
 'Forsaken Land of the Gods a desolate, fog-shrouded landmass trapped behind a divine barrier. Fill with ancient ruins, monsters, and decayed old gods.',
 NULL, 1, NULL),
-- ID: 4
('Western Continent', NULL,
 'Isolated homeland of the ancient elves, hidden and sealed away from the rest of the world with a completely separate mystical system then the main story.',
 NULL, 1, NULL),
-- ID: 5
('Beserk Sea', NULL,
 'Vast ocean with violent storms and sea monsters. A dangerous region known for its shipwrecks and piracy located between the Southern Continent and the North Continent.',
 NULL, 1, NULL),
-- ID: 6
('Sonia Sea', NULL,
 'Northern Continent, containing major trading routes, islands like the Rorsted Archipelago, popular area for pirates.',
 NULL, 1, NULL),
-- ID: 7
('Fog Sea', NULL,
 'A misty, hazard-prone maritime region associated with ghostly legends and hidden routes. Home to rare, near-extinct Beyonder creatures and ancient ruins tied to primal or outer deity worship',
 NULL, 1, NULL),
-- ID: 8
('North Sea', NULL,
 'Known for its harsh, freezing, and severe polar conditions matching the high-latitude climate of the northern region.',
 NULL, 1, NULL),
-- ID: 9
('Polar Sea', NULL,
 'The freezing ocean located at the southernmost part of the map, bordering the bottom edge of the Southern Continent',
 NULL, 1, NULL),
-- ID: 10
('Sea Of Ruins', NULL,
 'A dangerous, structurally fractured body of water located to the extreme east of the Sonia Sea. It acts as a transitional boundary leading toward the sealed Eastern Continent.',
 NULL, 1, NULL),

-- Third epoch
-- ID: 11
('The Divine Kingdom of the Ancient Sun God', NULL,
 'In the whole of the third epoch this kingdom ruled over the North, South, and East continents, with the King of the Ancient Sun God as their leader for the whole epoch.',
 NULL, 3, 3),

-- Regions within Northern Continent
-- ID: 12 | parent: 1 (Northern Continent)
('Hornacis Mountain Range', 'Northern Continent',
 'A dangerous mountain range home to various demonic cults and powerful Beyonders.',
 1, 5, NULL),

-- Fourth epoch: geopolitical boundaries
-- ID: 13 | parent: 1 (Northern Continent)
('Solomon Empire', 'Northern Continent',
 'The empire that ruled the whole of the Northern Continent during the first half of the fourth epoch, Backed by the king of angles',
 1, 4, 4),
-- ID: 14 | parent: 1
('Tudor Empire', 'Northern Continent',
 'After the break of Solomon empire Tudor and Trunsoest empire was formed as a dual leadership of the two families that ruled the majority of the North continent then broke off as the Tudor empire covering the western and central parts of the north continent',
 1, 4, 4),
-- ID: 15 | parent: 1
('Trunsoest Empire', 'Northern Continent',
 'After the break of Solomon empire Tudor and Trunsoest empire was formed as a dual leadership of the two families that ruled the majority of the North continent then broke off as the Trunsoest empire covering the eastern and southern parts of the north continent.',
 1, 4, 4),
-- ID: 16 | parent: 1
('Second Solomon Empire', 'Northern Continent',
 'After the Solomon empire collapsed, the remaining loyalists established a new empire in the southern parts of the northern continent called the second Solomon empire',
 1, 4, 4),

-- Fifth epoch: geopolitical boundaries
-- ID: 17 | parent: 1 (Northern Continent)
('Loen Kingdom', 'Northern Continent',
 'The dominant kingdom of the Northern Continent that is most of the eastern coast of the continent stretching to the west up to the hornacis mountain range. With colonies in the East Balam and islands in the Rorsted Archipelago.',
 1, 5, NULL),

    -- Cities within Loen Kingdom
    -- ID: 18 | parent: 17 (Loen Kingdom)
    ('Tingen City', 'Loen Kingdom',
    'A mid-sized industrial city, but more known for its universities and education second to Backlund the city capital.',
    17, 5, NULL),
        --Places within Tingen City
        -- ID: 19 | parent: 18 (Tingen City)
        ('Blackthorn Security Company', 'Tingen City',
        'Located at No. 2 Zouteland Street. Contains the underground Chanis Gate, which stores dangerous Sealed Artifacts.',
        18, 5, NULL),
        -- ID: 20 | parent: 18
        ('No. 3 Welch Street', 'Tingen City',
        'A secluded villa.',
        18, 5, NULL),
        -- ID: 21 | parent: 18
        ('Tingen University', 'Tingen City',
        'A prestigious academic institution that is known for its history and literature department.',
        18, 5, NULL),
        -- ID: 22 | parent: 18
        ('Khoy University', 'Tingen City',
        'Another major local university located in the city, known for its academic rivalry with Tingen University.',
        18, 5, NULL),
        -- ID: 23 | parent: 18
        ('Daffodil Street Residence', 'Tingen City',
        'No. 2 Daffodil Street is the charming town residence.',
        18, 5, NULL),
        -- ID: 24 | parent: 18
        ('The Hound Pub', 'Tingen City',
        'A rowdy tavern in the suburbs of the city.',
        18, 5, NULL),

    -- ID: 25 | parent: 17 (Loen Kingdom)
    ('Backlund', 'Loen Kingdom',
    'The capital and largest city of the Loen Kingdom, Heavy industry city, filled with smog.',
    17, 5, NULL),
        --Places within Backlund
        -- ID: 26 | parent: 25 (Backlund)
        ('Empress Borough', 'Backlund',
        'The ultra-wealthy district home to the royal family, nobility, and high-ranking officials.',
        25, 5, NULL),
        -- ID: 27 | parent: 25
        ('Cherwood Borough', 'Backlund',
        'A middle-class residential area.',
        25, 5, NULL),
        -- ID: 28 | parent: 25
        ('North Borough', 'Backlund',
        'Location of the St. Samuel Cathedral and the municipal government.',
        25, 5, NULL),
        -- ID: 29 | parent: 25
        ('East Borough', 'Backlund',
        'The heavily polluted, poverty-stricken slums where the working class lives.',
        25, 5, NULL),
        -- ID: 30 | parent: 25
        ('Hillston Borough', 'Backlund',
        'A wealthy commercial and residential hub hosting the Backlund Stock Exchange and upscale clubs.',
        25, 5, NULL),
        -- ID: 31 | parent: 25
        ('Backlund Bridge District', 'Backlund',
        'A bustling transportation hub split by the Tussock River, heavily populated by the lower-middle class.',
        25, 5, NULL),
        -- ID: 32 | parent: 25
        ('Cathedral of the Holy Wind', 'Backlund',
        'The main bastion for the Church of the Lord of Storms located in the Cherwood Borough.',
        25, 5, NULL),
        -- ID: 33 | parent: 25
        ('St. Samuel Cathedral', 'Backlund',
        'The regional headquarters of the Church of the Evernight Goddess located in North Borough.',
        25, 5, NULL),
        -- ID: 34 | parent: 25
        ('Harvest Church', 'Backlund',
        'A modest, peaceful church located south of the Tussock River in the East Borough praising the God of Harvest.',
        25, 5, NULL),
        -- ID: 35 | parent: 25
        ('Sodom Palace', 'Backlund',
        'The grand royal palace where King George III resides. It is the political heart of the Loen Kingdom and the site of major late-game conspiracies.',
        25, 5, NULL),
        -- ID: 36 | parent: 25
        ('House of Lords and House of Commons', 'Backlund',
        'The dual houses of parliament where the kingdoms laws, taxes, and political policies are debated and enacted.',
        25, 5, NULL),
        -- ID: 37 | parent: 25
        ('Backlund Stock Exchange', 'Backlund',
        'The economic epicenter of the kingdom located in Hillston Borough. It acts as a frequent meeting point for wealthy industrialists and influential investors.',
        25, 5, NULL),
        -- ID: 38 | parent: 25
        ('Braveheart Bar', 'Backlund',
        'A gritty, rowdy tavern located in the Backlund Bridge District. It features underground boxing matches and serves as a major hub for bounty hunters, informants, and Beyonder gatherings.',
        25, 5, NULL),
        -- ID: 39 | parent: 25
        ('The Odora Family Villa', 'Backlund',
        'An elegant estate in Hillston Borough. It acts as the secret meeting ground for the Backlund Sanguines.',
        25, 5, NULL),

    -- ID: 40 | parent: 17 (Loen Kingdom)
    ('Pritz Harbor', 'Loen Kingdom',
    'A major port city in the Loen Kingdom. Gateway to maritime routes.',
    17, 5, NULL),
        --Places within Pritz Harbor
        -- ID: 41 | parent: 40 (Pritz Harbor)
        ('The Royal Navy Docks', 'Pritz Harbor',
        'The highly fortified, restricted sector of the harbor that serves as the main base for the Loen Kingdom''s navy.',
        40, 5, NULL),
        -- ID: 42 | parent: 40
        ('The Pritz', 'Pritz Harbor',
        'A massive, state-of-the-art ironclad battleship. It represents the pinnacle of Loen''s industrial and military might.',
        40, 5, NULL),
        -- ID: 43 | parent: 40
        ('The White Agate Route', 'Pritz Harbor',
        'The primary commercial docks where massive merchant vessels, passenger ships, and ocean liners depart for the Berserk Sea and the Southern Continent.',
        40, 5, NULL),
        -- ID: 44 | parent: 40
        ('The Maritime Trade Exchange', 'Pritz Harbor',
        'A bustling economic hub where shipping magnates, spice traders, and colony investors negotiate international shipping contracts.',
        40, 5, NULL),
        -- ID: 45 | parent: 40
        ('The Sailor''s Tavern', 'Pritz Harbor',
        'A rugged, rowdy pub heavily frequented by sailors, adventurers, and off-duty Mandated Punishers.',
        40, 5, NULL),
        -- ID: 46 | parent: 40
        ('Smuggler''s Cove', 'Pritz Harbor',
        'A dangerous, unpatrolled network of coastal caves and docks used by underground syndicates to transport illegal black-market colonial goods.',
        40, 5, NULL),

    -- ID: 47 | parent: 17 (Loen Kingdom)
    ('Constant City', 'Loen Kingdom',
    'Second largest city in the Loen Kingdom and a Industrial location for the Loen Kingdom',
    17, 5, NULL),
    -- ID: 48 | parent: 17
    ('Belltaine City', 'Loen Kingdom',
    'A port city located in the Rorsted Archipelago, it is the starting city of Klein Moretti',
    17, 5, NULL),
    -- ID: 49 | parent: 17
    ('Limon City', 'Loen Kingdom',
    'A city that is a trade hub for interior Loen Kingdom',
    17, 5, NULL),
    -- ID: 50 | parent: 17
    ('Limud Town', 'Loen Kingdom',
    'A historical town located near an abandoned castle from the Tudor Family',
    17, 5, NULL),

-- ID: 51 | parent: 1 (Northern Continent)
('Feysac Empire', 'Northern Continent',
 'Frozen empire in the north known for its physically imposing citizens and brutal, unyielding military might.',
 1, 5, NULL),
    -- Cities within Feysac Empire
    -- ID: 52 | parent: 51 (Feysac Empire)
    ('St. Millom', 'Feysac Empire',
    'The capital city of the Feysac Empire coastal along the eastern',
    51, 5, NULL),
    -- ID: 53 | parent: 51
    ('Indaw', 'Feysac Empire',
    'Northwest port city that does trade the inlet body of water between Feysac'' two main bodies of land.',
    51, 5, NULL),
    -- ID: 54 | parent: 51
    ('Rolls', 'Feysac Empire',
    'East coast of the empire known for regional trade and industries like canned wolf-fish.',
    51, 5, NULL),
    -- ID: 55 | parent: 51
    ('Raklev City', 'Feysac Empire',
    'A religous city that is near Lake Dalsh and a heavily militarized zone.',
    51, 5, NULL),

-- ID: 56 | parent: 1 (Northern Continent)
('Intis Republic', 'Northern Continent',
 'A coastal republic in the west that stretches all the way to the Hornacis mountain range, known for its revolutionary history, unique political structure and powerful Beyonder organizations. Colonized West Balam after Roselle found a way to the Southern Continent.',
 1, 5, NULL),
    --Cities within Intis Republic
    -- ID: 57 | parent: 56 (Intis Republic)
    ('Trier', 'Intis Republic',
    'Capital of the Intis Republic known as the capital of joy and the city of fashion. It sits on the 2 rivers Ryan and Srenzo.',
    56, 5, NULL),
        --Zones in Trier
        -- ID: 58 | parent: 57 (Trier)
        ('Underground Trier', 'Trier',
        'Located directly beneath the modern capital. It is a layered, highly dangerous subterranean landscape containing the corrupted ruins of old Trier which was the capital of the Tudor empire',
        57, 4, NULL),
        -- ID: 59 | parent: 57
        ('Bigorre', 'Trier',
        'The provincial capital city of Riston Province, a administrative center.',
        57, 5, NULL),
        -- ID: 60 | parent: 57
        ('Dariège', 'Trier',
        'Border city situated near the Dariège Mountain Range.',
        57, 5, NULL),
        -- ID: 61 | parent: 57
        ('Cordu Village', 'Trier',
        'Mountain village located within the broader territory of Dariège mountain range.',
        57, 5, NULL),
        -- ID: 62 | parent: 57
        ('Quartier du Gentleman', 'Trier',
        'An upscale, highly affluent commercial and residential area. It hosts rich financiers, luxury boutiques, and the high-society clubs frequented by nobility and corrupt politicians.',
        57, 5, NULL),
        -- ID: 63 | parent: 57
        ('Le Marché du Quartier', 'Trier',
        'A bustling, chaotic, lower-middle-class hub dense with markets, bars, and street dancers.',
        57, 5, NULL),
        -- ID: 64 | parent: 57
        ('Quartier de la Cathédrale', 'Trier',
        'The religious epicenter of the city containing towering cathedrals and administrative headquarters for the orthodox churches.',
        57, 5, NULL),
        -- ID: 65 | parent: 57
        ('Quartier des Beaux-Arts', 'Trier',
        'A vibrant, bohemian district filled with theaters, operational galleries, and independent studios where world-class artists, musicians, and novelists gather.',
        57, 5, NULL),
        -- ID: 66 | parent: 57
        ('The Élysée Palace', 'Trier',
        'The political core of the Intis Republic, serving as the official residence of the President and the center of the nation''s governance.',
        57, 5, NULL),
        -- ID: 67 | parent: 57
        ('Sauron''s Castle / The Imperial Palace', 'Trier',
        'A grand historic castle heavily tied to the ancient Sauron Angel Family and the remnants of Emperor Roselle''s era.',
        57, 5, NULL),
        -- ID: 68 | parent: 57
        ('Eternal Blazing Sun Cathedrals', 'Trier',
        'Massive, gold-adorned structures that act as the main bases of operations for the Church of the Eternal Blazing Sun and their enforcement arm, the Purifiers.',
        57, 5, NULL),
        -- ID: 69 | parent: 57
        ('The Steam Cathedral', 'Trier',
        'The local headquarters for the Church of the God of Steam and Machinery,  as a testament to the city''s advanced industrial architecture.',
        57, 5, NULL),
        -- Underground Trier sub-levels (parent: 58 — Underground Trier)
        -- NOTE: The Fourth Level inserted before The Samaritan Women's Spring so the spring can reference it as its parent
        -- ID: 70 | parent: 58 (Underground Trier)
        ('The Fourth Level', 'Underground Trier',
        'A broader underground tier housing hidden, dangerous ruins belonging to the legendary Fourth Epoch Angel Families—including Amon, Zoroast, Jacob, and Abraham.',
        58, 4, NULL),
        -- ID: 71 | parent: 70 (The Fourth Level)
        ('The Samaritan Women''s Spring', 'Underground Trier',
        'Hidden in the deep recesses of the fourth level, this mysterious and highly hazardous spring is a focal point of corruption and mystical phenomenon.',
        70, 4, NULL),
        -- ID: 72 | parent: 58 (Underground Trier)
        ('The Third Level', 'Underground Trier',
        'A deeper, dangerous tier containing a cobblestone square decorated with ancient religious pillars and tombs belonging to the historical Tamara Family.',
        58, 4, NULL),

-- ID: 73 | parent: 1 (Northern Continent)
('Feynapotter Kingdom', 'Northern Continent',
 'Agrarian, and highly traditional kingdom located in the southern region of the Northern Continent, utilizing its massive agricultural output as geopolitical leverag. After the World War Feynapotter gains parts of West Balam',
 1, 5, NULL),
    --Cities within Feynapotter Kingdom
    -- ID: 74 | parent: 73 (Feynapotter Kingdom)
    ('Feynapotter City', 'Feynapotter Kingdom',
    'Capital of the Feynapotter Kingdom, founded by the Castiya Family during the Fourth Epoch.',
    73, 5, NULL),
    -- ID: 75 | parent: 73
    ('Port Santa', 'Feynapotter Kingdom',
    'Crucial coastal port city, it acts as a primary naval gateway for trade, diplomatic movement, and military shipping for the kingdom.',
    73, 5, NULL),

-- ID: 76 | parent: 1 (Northern Continent)
('Lenburg Kingdom', 'Northern Continent',
 'Small kingdom that is north of Feynapotter and south of the Intis Republic. Seperated from the Feynapotter Kingdom after the Battle of Violated Oath.',
 1, 4, 5),
    --Cities within Lenburg Kingdom
    -- ID: 77 | parent: 76 (Lenburg Kingdom)
    ('Azshara', 'Lenburg Kingdom',
    'Capital of the Lenburg Kingdom, The city''s culture, infrastructure, and leadership are fundamentally structured around academia, research, and the accumulation of knowledge.',
    76, 5, NULL),

-- ID: 78 | parent: 1 (Northern Continent)
('Masin Kingdom', 'Northern Continent',
 'Landlocked small nation that is near the border of Feynapotter and Lenburg Kingdom. Seperated from the Feynapotter Kingdom after the Battle of Violated Oath.',
 1, 5, NULL),
    --Cities within Masin Kingdom
    -- ID: 79 | parent: 78 (Masin Kingdom)
    ('Avelcourt', 'Masin Kingdom',
    'Capital of the Masin Kingdom,',
    78, 5, NULL),

-- ID: 80 | parent: 1 (Northern Continent)
('Segar  Kingdom', 'Northern Continent',
 'Landlocked small nation that is near the border of Feynapotter and Lenburg Kingdom. Seperated from the Feynapotter Kingdom after the Battle of Violated Oath.',
 1, 5, NULL),

-- Regions within Southern Continent

-- Fourth epoch
-- ID: 81 | parent: 2 (Southern Continent)
('Balam Empire', 'Southern Continent',
 'A empire that ruled the majority of the Southern Continent during the fourth epoch.',
 2, 4, 4),
-- ID: 82 | parent: 2
('Paz Valley', 'Southern Continent',
 'A valley between the east and west sides of the southern continent, rich in plants and other materials. Ruled by the paz kingdom, but bent the knee to the Balam empire.',
 2, 4, 5),

-- Fifth epoch
-- ID: 83 | parent: 2 (Southern Continent)
('East Balam', 'Southern Continent',
 'After the fall of the Balam empire, the south continent was split into two, East Balam was the eastern half of the Southern Continent.',
 2, 5, NULL),
-- ID: 84 | parent: 2
('West Balam', 'Southern Continent',
 'After the fall of the Balam empire, the south continent was split into two, West Balam was the western half of the Southern Continent.',
 2, 5, NULL),

-- Regions within Eastern Continent
-- ID: 85 | parent: 3 (Eastern Continent)
('The City of Silver', 'Eastern Continent',
 'A pitch-black, weed-overgrown city, one of the only living signs of humanity withing the Eastern Continent after the fall of the Ancient Sun God.',
 3, 3, 5),
-- ID: 86 | parent: 3
('Moon City', 'Eastern Continent',
 'A mysterious city that seems to exist within the forsaken lands through desperate means.',
 3, 3, 5),
-- ID: 87 | parent: 3
('The Giant King''s Court', 'Eastern Continent',
 'A majestic, mythical palace complex frozen in a perpetual state of sunset. It is located on a massive mountain range and served as the ancient capital of the Giant King Aurmir during the Second Epoch.',
 3, 2, 2),
-- ID: 88 | parent: 3
('Nois City', 'Eastern Continent',
 'A massive ghost town that managed to survive in the deep darkness until recent history. Its entire population was tragically massacred and transformed into soulless marionettes.',
 3, 3, 5),
-- ID: 89 | parent: 3
('Afternoon Town', 'Eastern Continent',
 'An ancient town frozen in the afternoon sunlight just outside the border of the Giant King''s Court. It is densely populated by grotesque, invisible shadow monsters and mutated entities left behind from the Third Epoch cataclysm.',
 3, 3, 3),
-- ID: 90 | parent: 3
('Chernobyl', 'Eastern Continent',
 'The holy residence and birthplace of the Ancient Sun God. Kept under a preservation field, it contains the literal ruins of a real-world pre-epoch nuclear power plant.',
 3, 1, 1),
-- ID: 91 | parent: 3
('The True Creator''s Temple', 'Eastern Continent',
 'A blasphemous, blood-stained cathedral that serves as the anchoring base of the True Creator within the sealed continent.',
 3, 4, 5),

--Locations in Berserk Sea
-- ID: 92 | parent: 5 (Berserk Sea)
('Hanth island', 'Berserk Sea',
 'A strategic transit port controlled by the Feynapotter Kingdom with a natural deepwater port used for trade between the two continents.',
 5, 5, NULL),
-- ID: 93 | parent: 5
('Utopia', 'Berserk Sea',
 'A mysterious, anomalous island location grafted into the Berserk Sea featuring key sites like the Saint Arianna Cathedral and a local harbor.',
 5, 5, 5),
-- ID: 94 | parent: 5
('Poto Harbor', 'Berserk Sea',
 'A key waypoint and harbor location utilized during spirit world and maritime navigation across the turbulent waters.',
 5, 5, NULL),
-- ID: 95 | parent: 5
('Waypoint island', 'Berserk Sea',
 'One of the few stable navigational stops amid the chaotic magnetic fields and permanent lightning storms.',
 5, 5, NULL),

--Locations in Sonia Sea
-- ID: 96 | parent: 6 (Sonia Sea)
('Sonia Island', 'Sonia Sea',
 'The largest island in the sea and its namesake. It is a massive, continent-like landmass heavily fortified and fought over by the Feysac Empire',
 6, 5, NULL),
-- ID: 97 | parent: 6
('Rorsted Archipelago', 'Sonia Sea',
 'A crucial chain of islands, heavily contested territory by nations and pirates.',
 6, 5, 5),
    --Locations in Rorsted Archipelago
    -- ID: 98 | parent: 97 (Rorsted Archipelago)
    ('Bayam', 'Rorsted Archipelago',
    'Known as the "City of Generosity," it serves as the capital of the Rorsted Archipelago and acts as a central hub for pirates, adventurers, and merchants.',
    97, 5, NULL),
    -- ID: 99 | parent: 97
    ('New City of Silver', 'Rorsted Archipelago',
    'Established by the survivors of the Forsaken Land of the Gods after they successfully escaped into the real world.',
    97, 5, NULL),
    -- ID: 100 | parent: 97
    ('New Moon City', 'Rorsted Archipelago',
    'Established by the survivors of the Forsaken Land of the Gods after they successfully escaped into the real world.',
    97, 5, NULL),

-- ID: 101 | parent: 6 (Sonia Sea)
('Sea of Ruins', 'Sonia Sea',
 'Located at the easternmost edge of the Sonia Sea, this anomalous area features golden skies and water even without a sun. It is the historical battlefield where the Rose Redemption assassinated the Ancient Sun God, triggering the Cataclysm. It also hides the gateway leading back to the Forsaken Land of the Gods.',
 6, 5, NULL),
-- ID: 102 | parent: 6
('Bansy Harbor', 'Sonia Sea',
 'A crucial resupply port with dark, deep-seated anomalies tied to the Medici family, the Hunter pathway, and secret sacrificial rituals.',
 6, 5, NULL),
-- ID: 103 | parent: 6
('Gargas Archipelago', 'Sonia Sea',
 'A northern island chain under the control of the Feysac Empire, marking the start of a safe navigational route that leads eastward toward the Sea of Ruins.',
 6, 5, NULL),
-- ID: 104 | parent: 6
('Oravi Island', 'Sonia Sea',
 'A lawless island famous for its bustling underground trade markets, frequently populated by bounty hunters, pirates, and black-market Beyonder dealers.',
 6, 5, NULL),
-- ID: 105 | parent: 6
('Primitive Island', 'Sonia Sea',
 'An uncharted, dangerous island away from the main shipping lanes.',
 6, 5, NULL),
-- ID: 106 | parent: 6
('Pasu Island', 'Sonia Sea',
 'A heavily guarded island that serves as the secret, primary headquarters for the Church of the Lord of Storms.',
 6, 5, NULL),

--Locations in Fog Sea
-- ID: 107 | parent: 7 (Fog Sea)
('Fog Sea Archipelago', 'Fog Sea',
 'The first overseas colony of the Intis Republic, chosen due to its proximity to the mainland.',
 7, 5, NULL),
    --Locations in Fog Sea Archipelago
    -- ID: 108 | parent: 107 (Fog Sea Archipelago)
    ('Farim', 'Fog Sea Archipelago',
    'The capital of the Fog Sea Archipelago, situated specifically on Saint Tick Island. It functions as a vital trading and resupply port for ships operating along the Intis-Feynapotter maritime route.',
    107, 5, NULL),

-- ID: 109 | parent: 7 (Fog Sea)
('La Cha Island', 'Fog Sea',
 'A secluded island deep within the Fog Sea''s dense mists, home to Queen Mystic Bernadette Gustav.',
 7, 5, NULL),
-- ID: 110 | parent: 109 (La Cha Island)
('Emerald City', 'La Cha Island',
 'The majestic, hidden palace of Queen Mystic Bernadette Gustav. It is tucked away on La Cha Island deep within the sea''s dense mists.',
 109, 5, NULL),
-- ID: 111 | parent: 7 (Fog Sea)
('Primitive Island', 'Fog Sea',
 'A dangerous, isolated island where the native inhabitants worship the Outer Deity known as the Mother Goddess of Depravity.',
 7, 5, NULL),
-- ID: 112 | parent: 7
('Banamo Island', 'Fog Sea',
 'A notorious pirate haven and a port where outlaws, smugglers, and individuals with hidden identities gather.',
 7, 5, NULL),
-- ID: 113 | parent: 7
('Abyss Entrance', 'Fog Sea',
 'Nautical legends claim that a physical rift or gateway descending into the corrupted Abyss is hidden somewhere deep within the western reaches of the Fog Sea.',
 7, 1, NULL),

-- Locations in North Sea
-- ID: 114 | parent: 8 (North Sea)
('Avalon', 'North Sea',
 'The most prominent location in the North Sea. It served as the highly secretive, hidden headquarters of the Moses Ascetic Order.',
 8, 4, 5),

-- Locations in Sea of Ruins
-- ID: 115 | parent: 10 (Sea Of Ruins)
('Black Cloister', 'Sea of Ruins',
 'A supernatural, multi-level architectural anomaly manifested within the sea. Each building and floor represents a different part of the surrounding waters, and behind its final door lies the Ancient Sun God''s last dream.',
 10, 3, 5),
-- ID: 116 | parent: 10
('Giant King''s Court Shadow', 'Sea of Ruins',
 'A massive, illusory reflection of the Giant King''s Court that stands on an ethereal mountain peak over the sea. The physical gateway into the Forsaken Land of the Gods is hidden inside this shadow.',
 10, 3, 5),
-- ID: 117 | parent: 10
('Gargas Archipelago', 'Sea of Ruins',
 'A northern island chain under Feysac control that marks the edge of the safe, established maritime route used to sail northeast directly into the Sea of Ruins.',
 10, 5, NULL),

 --ID: 118 | parent: 17
 ('East Chester County', 'Loen Kingdom',
 'County outside of Backlund City in the Loen Kingdom. Where the Hall family castle is located.',
 17, 5, NULL);
 

-- =============================================================
--  10. PATHWAYS 
-- =============================================================
INSERT INTO pathways (sefirot_id, names, color, description) VALUES
-- Sephirot: Sefirah Castle
(1, ARRAY['Fool', 'Seer'],                   '#808080', 'Change, history, secrets, concealment, puppet-strings, and the unknown.'),
(1, ARRAY['Door', 'Apprentice'],              '#0B132B', 'Space, sealing, wandering, copying, and conceptual passage.'),
(1, ARRAY['Error', 'Marauder'],               '#EBF1F5', 'Time, loopholes, parasitism, theft, deception, and avatars.'),
-- Sephirot: Chaos Sea
(2, ARRAY['Sun', 'Bard'],                    '#FFD700', 'Light, purification, contracts, oaths, and absolute righteousness.'),
(2, ARRAY['Visionary', 'Spectator'],          '#70D6FF', 'Mind, imagination, creation, virtual reality, and psychological manipulation.'),
(2, ARRAY['Tyrant', 'Sailor'],                '#001F54', 'Storms, lightning, water, absolute authority, and raw physical destruction.'),
(2, ARRAY['Hanged Man', 'Secrets Suppliant'], '#800000', 'Sacrifice, degenerated flesh, grazing/absorbing powers, and spiritual degeneration.'),
(2, ARRAY['White Tower', 'Reader'],           '#E0FBFC', 'Omniscience, learning, imitation, analysis, and prophetic deduction.'),
-- River of Eternal Darkness
(3, ARRAY['Darkness', 'Sleepless'],           '#1A0A2A', 'Night, peaceful sleep, misfortune, horror, and permanent erasure.'),
(3, ARRAY['Death', 'Corpse Collector'],       '#3D3D3D', 'The underworld, souls, structural decay, animation, and eternal rest.'),
(3, ARRAY['Twilight Giant', 'Warrior'],       '#FF4500', 'Combat, defense, physical decay, the end, and honor.'),
-- City of Calamity
(4, ARRAY['Red Priest', 'Hunter'],            '#B22222', 'War, fire, tactical conspiracy, provocateering, and collective military force.'),
(4, ARRAY['Demoness', 'Assassin'],            '#111111', 'Catastrophe, disease, mirrors, temptation, physical transmutation, and frost.'),
-- Nation of Disorder
(5, ARRAY['Justiciar', 'Arbitor'],            '#005f73', 'Absolute rules, prohibition, judgment, execution, and unyielding order.'),
(5, ARRAY['Dark Emperor', 'Lawyer'],          '#000000', 'Distortion, law manipulation, shadow order, magnification, and rebirth.'),
-- Key of Light
(6, ARRAY['Monster', 'Wheel of Fortune'],     '#FFDF00', 'Fate, luck, probability, reincarnation, and destiny.'),
-- Brood Hive
(7, ARRAY['Mother', 'Planter'],               '#2E7D32', 'Earth, nature, fertility, plant life, and physical growth.'),
(7, ARRAY['Moon', 'Apothecary'],              '#990000', 'Life energy, blood, potions/herbs, and reproductive cycles.'),
-- Knowledge Moor
(8, ARRAY['Hermit', 'Mystery Pryer'],         '#480082', 'Mysticism, information stream, ancient hidden knowledge, and hidden fairy-tales.'),
(8, ARRAY['Paragon', 'Savant'],               '#6A0DAD', 'Technology, mechanics, civilization, craftsmanship, and physical creation.'),
-- Tenebrous World
(9, ARRAY['Prisoner', 'Mutant'],              '#4A3B32', 'Desires, physical restraint, spiritual release, and primal beasts.'),
(9, ARRAY['Abyss', 'Criminal'],               '#A9A9A9', 'Corruption, pure malice, continuous degradation, and dark desires.');

-- =============================================================
--  11. SEQUENCES
-- =============================================================

-- SEQUENCE OF PATHWAY: FOOL
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(1, 9, 'Seer',                   'Remain a neutral interpreter of the spirit world. Avoid arrogance, and remember that divination offers probabilities, not absolute certainties.'),
(1, 8, 'Clown',                  'Bring laughter to others while masking your own true pain, terror, and helplessness behind a colorful, deliberate performance.'),
(1, 7, 'Magician',               'A magician always commands the stage, distracts the audience with illusions, and relies on precise preparation to turn the impossible into reality.'),
(1, 6, 'Faceless',               'Fully immerse yourself in other identities to understand their lives, but keep a firm grip on your original anchor.'),
(1, 5, 'Nimblewright Master',    'Manipulate and choreograph the actions of your targets from the shadows, maintaining absolute detachment while pulling the strings.'),
(1, 4, 'Bizarro Sorcerer',       'Act as a terrifying director of a grotesque spectacle, using fear to manipulate reality and break the mental defense of your enemies.'),
(1, 3, 'Scholar of Yore',        'Resurrect historical truths, respect the weight of past eras, and maintain complete neutrality without getting emotionally entangled in modern events.'),
(1, 2, 'Miracle Invoker',        'Act as a wish-granting deity. The profound contrast between fulfilling the impossible for ordinary humans while gaining nothing yourself.'),
(1, 1, 'Attendant of Mysteries', 'Maintain the boundaries of reality and the spirit world, manipulating hidden concepts while serving as a loyal steward of the cosmos.'),
(1, 0, 'The Fool',               'Blind the world to actual truths by establishing massive, universe-altering conceptual deceptions, ultimately liberating reality from its rigid rules.');

-- SEQUENCE OF PATHWAY: DOOR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(2, 9, 'Apprentice',             'Learning, seeking hidden knowledge, and trying to open literal and metaphorical closed doors.'),
(2, 8, 'Trickster',              'Bypassing obstacles through unorthodox methods, making fun of rigid rules, and finding unexpected solutions.'),
(2, 7, 'Astrologer',             'Observing patterns, reading the positions of celestial objects, and mapping out the predictable movements of targets.'),
(2, 6, 'Scribe',                 'Recording, duplicating, and documenting the unique events, history, and powers of other Beyonders.'),
(2, 5, 'Traveler',               'Wandering across different regions, crossing spatial thresholds, and experiencing diverse, unfamiliar environments.'),
(2, 4, 'Secrets Sorcerer',       'Hiding secrets within hidden dimensions, and controlling access to hidden areas.'),
(2, 3, 'Wanderer',               'Exploring the deep, uncharted Cosmos and leaving permanent conceptual footprints.'),
(2, 2, 'Planeswalker',           'Establishing permanent travel markers across various planes, dimensions, and unique spiritual worlds.'),
(2, 1, 'Key of Stars',           'Becoming the absolute conceptual gateway of reality—controlling all physical, spiritual, and dimensional barriers.'),
(2, 0, 'Miracle Invoker',        'Managing what remains sealed or unsealed in the universe.');

-- SEQUENCE OF PATHWAY: ERROR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(3, 9, 'Marauder',               'Taking things from others, specializing in literal physical theft and stealth.'),
(3, 8, 'Swindler',               'Deceiving targets, manipulating interactions, and capturing info to make others choose wrongly.'),
(3, 7, 'Cryptologist',           'Decode and decrypt hidden information, trying to completely understand targets.'),
(3, 6, 'Prometheus',             'Stealing vital resources/abilities from others, extending the concept of theft to power.'),
(3, 5, 'Dream Stealer',          'Stealing, manipulating, and distorting the thoughts, intentions, and dreams of targets.'),
(3, 4, 'Parasite',               'Silently attaching to a host (physically or metaphorically) and extracting benefits without being noticed.'),
(3, 3, 'Mentor of Deceit',       'Masking true intentions entirely, letting targets walk into traps of their own miscalculation.'),
(3, 2, 'Trojan Horse of Destiny','Taking abstract concepts like fate, identity, and self-awareness from an individual.'),
(3, 1, 'Worm of Time',           'Becoming the ultimate bug in reality—exploiting, modifying, and creating loopholes in the fundamental rules and time of the universe.'),
(3, 0, 'Error',                  'Creating the fundamental flaw in reality that prevents absolute perfection.');

-- SEQUENCE OF PATHWAY: SUN
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(4, 9, 'Bard',                   'Sing and perform to boost the morale of allies. Use music and poetry to dispel fear, sorrow, and despair in others. Act as a source of emotional warmth and inspiration in dark times.'),
(4, 8, 'Light Supplicant',       'Sincerely praise and pray to the light or the Creator. Direct holy light to cleanse corruption, rot, and undead entities. Maintain an aura of purity and resist temptation or dark influences.'),
(4, 7, 'Solar High Priest',      'Guide believers, preach the doctrines of light, and lead religious rituals. Exorcise evil spirits and banish shadows from haunted or corrupted areas. Act as a strict, unyielding representative of the sun''s burning judgment.'),
(4, 6, 'Notary',                 'Bear witness to contracts, promises, and legal agreements between parties. Use powers to approve and temporarily boost the abilities of allies. Nullify and strip away the fraudulent or illegal powers of enemies. Strictly uphold personal honesty and punish deceit.'),
(4, 5, 'Priest of Light',        'Bring hidden secrets, plots, and conspiracies into the open light. Illuminate dark, dangerous ruins or underground areas to make them safe. Use intense holy light to completely melt away malice and shadows.'),
(4, 4, 'Unshadowed',             'Strip away corruption, external traits, and madness from targets or items. Leave no room for ambiguity, shadows, or gray areas in judgment. Maintain absolute internal transparency, ensuring no dark desires remain hidden within yourself.'),
(4, 3, 'Justice Mentor',         'Establish rules, laws, and boundaries that others must follow. Act as an impartial judge who metes out inescapable punishment to lawbreakers. Enforce systemic order over chaotic environments.'),
(4, 2, 'Light Seeker',           'Act as a savior for those who have lost all hope. Bear the burdens of others to guide them toward a hopeful future. Forge new paths where hope has been entirely extinguished.'),
(4, 1, 'Author of Order',        'Define what is right, orderly, and true for the entire universe. Radiate supreme authority, burning away all conceptual darkness, chaos, and heresy.'),
(4, 0, 'Sun',                    'Act as the unmoving center of the world''s moral and physical order.');

-- SEQUENCE OF PATHWAY: VISIONARY
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(5, 9, 'Spectator',              'Quietly watch people''s body language, expressions, and choices from the sidelines. Gain deep insights into human nature while remaining detached. Never become the center of attention or actively join the drama.'),
(5, 8, 'Telepathist',            'Listen to the surface thoughts, desires, and anxieties of targets. Use psychological cues to gently guide someone''s decisions without them realizing it. Maintain a calm, unreadable mind to prevent others from reading you.'),
(5, 7, 'Psychiatrist',           'Diagnose, treat, and pacify mental trauma, mania, and Beyonder psychological breakdowns. Plunge enemies into madness by exposing and triggering their deepest traumas and phobias. Balance your own mental health while absorbing the chaotic emotions of patients.'),
(5, 6, 'Hypnotist',              'Direct the subconscious minds of targets to make them perform specific actions. Make targets ignore obvious clues or completely forget critical events. Establish hidden psychological triggers in others that activate later.'),
(5, 5, 'Dream Walker',           'Guide targets by interacting with them inside their own dreams. Travel across different minds through the shared sea of human consciousness. Alter a target''s core personality traits by reshaping their dreamscapes.'),
(5, 4, 'Manipulator',            'Orchestrate elaborate social scenarios where targets willingly walk into your traps. Fuel specific emotions to control crowds. Hide your presence so completely that your targets believe your desires are their own ideas.'),
(5, 3, 'Disciple of Light',      'Guide large populations toward a specific philosophy, religion, or belief system. Illuminate hidden psychological complexes to force societal change. Act as an intellectual or spiritual beacon that shapes the public mindset.'),
(5, 2, 'Dragon of Mind',         'Project your own imagination into the physical world as tangible objects or creatures. Create complex, living psychological personas that can act independently of you. Hide your true physical body entirely within the collective subconscious.'),
(5, 1, 'Author',                 'Design massive, sweeping historical trends and global events through subtle psychological seeds. Write scripts for the world where envisioned futures naturally become absolute reality.'),
(5, 0, 'Visionary',              'The power to rewrite existence by dictating and enforcing the world''s true script.');

-- SEQUENCE OF PATHWAY: TYRANT
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(6, 9, 'Sailor',                 'Master the volatile ocean environment. Develop excellent balance and agility on stormy seas. Exhibit bravery and composure when facing dangerous waters and marine creatures.'),
(6, 8, 'Folk Of Rage',           'Channel raw physical anger to overpower obstacles. Engage in direct, physical confrontations without hesitation. Intimidate opponents using overwhelming aggression and outbursts of fury.'),
(6, 7, 'Seafarer',               'Navigate, predict weather, and command maritime voyages. Accurately read meteorological signs, wind currents, and star patterns. Safely guide crews through uncharted or challenging waters.'),
(6, 6, 'Wind-Blessed',           'Command the winds and sky as an extension of yourself. Listen to and interpret the whispers of the wind. Harness aerial currents to glide, maneuver, or shield allies.'),
(6, 5, 'Ocean Songster',         'Channel the mesmerizing, powerful music of the deep. Perform melodies that evoke intense emotions like awe or overwhelming fear in listeners. Use your voice to influence marine life and the surrounding waters.'),
(6, 4, 'Cataclysmic Intermediary','Act as a bridge bringing natural forces to reality. Summon and direct large-scale maritime and atmospheric phenomena. Demonstrate the overwhelming scale of natural forces compared to individual human life.'),
(6, 3, 'Sea King',               'Establish authority over the world''s oceans. Govern maritime territories, islands, and naval trade routes. Require marine entities and sea voyagers to recognize your presence and authority.'),
(6, 2, 'Calamity Venerable',     'Embody significant change and upheaval on a broad scale. Bring transformative or disruptive events to entire civilizations or geographical regions. Act as an inevitable force that resets or alters established societal structures.'),
(6, 1, 'Thunder God',            'Demand total, unquestioning obedience from all entities within your domain. Swiftly suppress any form of rebellion, heresy, or defiance.'),
(6, 0, 'Tyrant',                 'Demand total, unquestioning obedience from all entities within your domain. Swiftly suppress any form of rebellion, heresy, or defiance.');

-- SEQUENCE OF PATHWAY: HANGED MAN
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(7, 9, 'Secrets Supplicant',     'Listen to hidden cosmic lore. Patiently listen to obscure revelations and esoteric whispers. Keep dangerous secrets hidden safely from those who might be harmed by them.'),
(7, 8, 'Listener',               'Direct communion with complex and chaotic information. Channel and interpret difficult communications from higher states of being. Maintain focus while experiencing overwhelming sensory or auditory input.'),
(7, 7, 'Shadow Ascetic',         'Practice humility and merge with the darkness. Lead a life of simplicity and move through the world without seeking recognition. Utilize the shadows to remain unseen and inconspicuous.'),
(7, 6, 'Rose Bishop',            'Integration, concealment, and biological manipulation. Hide your presence by physically blending into your environment or other biological forms. Perform complex rituals involving biological elements to sustain your influence.'),
(7, 5, 'Shepherd',               'Manage and utilize the spiritual traces of the deceased. Incorporate the characteristics of fallen Beyonders into your spiritual repertoire. Direct and utilize these captured traits in a coordinated manner.'),
(7, 4, 'Black Knight',           'A silent enforcer who handles internal shadows. Act as a grim guardian who neutralizes threats and suppresses false hope. Identify and manipulate the regrets or internal struggles of targets to influence them.'),
(7, 3, 'Trinity Templar',        'Balance multiple, contradictory states of existence. Effectively manage multiple conflicting roles or identities simultaneously. Utilize complex spiritual patterns to maintain stability despite internal contradictions.'),
(7, 2, 'Profane Presbyter',      'Counter divinity and spread spiritual influence. Neutralize the influence of sacred artifacts and challenge established divine connections. Lead secret organizations that thrive on unconventional or forbidden beliefs.'),
(7, 1, 'Dark Angel',             'Bear the symbolic weight of universal corruption and collective struggles. Act as a permanent, sacrificial authority figure who endures for the sake of others.'),
(7, 0, 'Hanged Man',             'Supreme sacrifice and bearing the world''s burdens. Bear the symbolic weight of universal corruption and collective struggles. Act as a permanent, sacrificial authority figure who endures for the sake of others.');

-- SEQUENCE OF PATHWAY: WHITE TOWER
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(8, 9, 'Reader',                 'Consume and comprehend vast amounts of text. Study history, science, and the occult extensively. Develop a sharp mind capable of recalling and analyzing complex details.'),
(8, 8, 'Learner',                'Methodically collect and organize information. Gather fragments of lost history, gossip, and obscure lore. Categorize knowledge to find hidden links between seemingly unrelated events.'),
(8, 7, 'Knowledge Keeper',       'Safeguard dangerous lore. Memorize volatile secrets that would overwhelm an average mind. Ensure that protected information is only shared with those prepared for it.'),
(8, 6, 'Polymath',               'Master multiple disciplines and mimic other abilities. Learn the fundamental principles behind various magical and physical systems. Deconstruct an opponent''s technique and recreate it using your own logic.'),
(8, 5, 'Cognizance Sage',        'Discern truth and see through illusions. Expose falsehoods and reveal hidden traps or deceptions. Maintain an objective and analytical perspective in complex situations.'),
(8, 4, 'Alchemist',              'Understand and alter the fundamental composition of matter. Break down materials or traits into their base spiritual components. Reassemble these components into new, highly functional items.'),
(8, 3, 'Prophet',                'Calculate and predict the outcome of events. Analyze variables to accurately forecast future crises or shifts. State your conclusions clearly, letting your logic influence the unfolding of events.'),
(8, 2, 'Wisdom Angel',           'Serve as a living record of universal knowledge. Function as an archive for the concepts, history, and laws of reality. Provide insights that can shift the developmental course of entire civilizations.'),
(8, 1, 'Omniscient Eye',         'Embody absolute knowledge and ultimate logic. Understand all things and analyze reality through a lens of perfect logic. Use reasoned principles to counter or neutralize the rules of the universe.'),
(8, 0, 'White Tower',            'Embody absolute knowledge and ultimate logic. Understand all things and analyze reality through a lens of perfect logic. Use reasoned principles to counter or neutralize the rules of the universe.');

-- SEQUENCE OF PATHWAY: DARKNESS
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(9, 9, 'Sleepless',              'Master the night hours. Stay active, vigilant, and alert when the rest of the world sleeps. Protect or patrol environments during the dark hours.'),
(9, 8, 'Midnight Poet',          'Embody the quiet, melancholic beauty of the night. Express emotions through arts or poetry that evoke tranquility and reflection. Soothe agitated minds and quiet chaotic environments.'),
(9, 7, 'Nightmare',              'Govern the dream realm and the subconscious. Enter, observe, and manipulate the dreams of sleeping targets. Pull targets into waking illusions or trap them within their own subconscious fears.'),
(9, 6, 'Soul Assassin',          'Eliminate threats silently and invisibly. Execute operations with perfect stealth, leaving no physical traces. Attack the target''s spirit or soul directly rather than their physical body.'),
(9, 5, 'Spirit Guide',           'Guide souls and soothe the dead. Help lingering spirits find peace and move on to the afterlife. Commune with the spiritual world without disturbing its balance.'),
(9, 4, 'Nightcatcher',           'Erase and conceal physical and conceptual targets. Trap entities, objects, or locations inside pockets of isolated darkness. Make events or targets completely disappear from immediate awareness.'),
(9, 3, 'Horror Bishop',          'Spread primordial fear and psychological quietude. Evoke deep, unexplainable dread in enemies by personifying the unknown. Enforce absolute, terrifying silence over chaotic or noisy situations.'),
(9, 2, 'Servant of Concealment', 'Erase information from history and memory. Conceal secrets, identities, or historical truths so thoroughly that they cease to exist in public memory. Operate as an invisible hand guiding reality from behind a veil.'),
(9, 1, 'Knight of Misfortune',   'Embody ultimate oblivion and misfortune. Bring misfortune, endings, and bad luck to those who defy natural cycles. Act as the final, quiet void that absorbs and erases all light, life, and meaning.'),
(9, 0, 'Darkness',               'Embody ultimate oblivion and misfortune. Bring misfortune, endings, and bad luck to those who defy natural cycles. Act as the final, quiet void that absorbs and erases all light, life, and meaning.');

-- SEQUENCE OF PATHWAY: DEATH
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(10, 9, 'Corpse Collector',      'Safely handle and respect the dead. Collect, clean, and properly bury human remains. Maintain high resistance to corpse toxins and negative spiritual energies.'),
(10, 8, 'Gravedigger',           'Prepare the final resting places and manage gravesites. Dig graves and construct secure tombs to keep the dead sealed. Identify and neutralize roaming undead or defiled graves.'),
(10, 7, 'Necromancer',           'Commune with and command spirits. Summon ghosts, wraiths, and natural spirits to perform tasks. Extract information from the souls of the recently deceased.'),
(10, 6, 'Spirit Dance',          'Harmonize with spiritual frequencies through movement. Perform specialized rituals and movements to channel spiritual energy. Allow spirits to temporarily assist or augment your physical actions.'),
(10, 5, 'Gatekeeper',            'Guard the threshold between the real world and the Underworld. Ensure that dead spirits do not escape into the land of the living. Prevent unauthorized living people from entering spiritual domains.'),
(10, 4, 'Undying',               'Cycle through life, death, and resurrection. Experience physical death and adapt to resurrecting with altered traits or memories. Maintain your core identity across multiple cyclical lifetimes.'),
(10, 3, 'Ferryman',              'Transport souls across the River of Eternal Darkness. Guide massive waves of dead spirits safely deeper into the Underworld. Safeguard the collective transition of souls out of physical reality.'),
(10, 2, 'Pale Emperor',          'Rule over the undead and dictate decay. Command vast legions of skeletal, zombie, or ghostly entities as a monarch. Inflict a state of withering, rot, and aging upon living systems.'),
(10, 1, 'Pale Angel',            'Embody the absolute end of all living things. Bring inevitable, impartial, and cold endings to entities, civilizations, or eras. Act as the universal standard that returns all animate matter back to stillness.'),
(10, 0, 'Death',                 'Embody the absolute end of all living things. Bring inevitable, impartial, and cold endings to entities, civilizations, or eras. Act as the universal standard that returns all animate matter back to stillness.');

-- SEQUENCE OF PATHWAY: TWILIGHT GIANT
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(11, 9, 'Warrior',               'Master physical combat and personal defense. Train your body to absolute peak physical condition. Engage in disciplined, face-to-face martial combat.'),
(11, 8, 'Gladiator',             'Perform and win in high-stakes combat arenas. Fight efficiently while managing the attention and pressure of an audience. Master a wide variety of melee weapons and tactical maneuvers.'),
(11, 7, 'Dawn Paladin',          'Protect others using bright, defensive energy. Act as an unyielding frontline shield for your companions. Summon dawn-like light to shatter enemy armor and dark magic.'),
(11, 6, 'Guardian',              'Take on damage to keep a specific target safe. Swear oaths to protect specific people, locations, or items. Absorb strikes and injuries meant for those under your protection.'),
(11, 5, 'Demon Hunter',          'Track and methodically eliminate mutated or corrupt threats. Study the specific weaknesses of monsters, devils, and mutants. Execute precise, lethal hunts utilizing custom tools and preparations.'),
(11, 4, 'Silver Knight',         'Achieve physical incorruptibility and tactical leadership. Lead military formations or knightly orders into heavy combat. Maintain an unwavering, rigid code of honor and inner discipline.'),
(11, 3, 'Ashen Knight',          'Persist through ruin and destruction. Guard crumbling ruins, dead civilizations, or lost causes without abandoning your post. Embody heavy resilience when all surrounding hope has turned to ash.'),
(11, 2, 'Glory Crown',           'Lead civilizations through their final, defining eras. Accept leadership positions during times of severe historical decline. Inspire others to achieve greatness and honor before their time runs out.'),
(11, 1, 'Hand of God',           'Embody the sunset of existence and absolute physical weight. Enforce the twilight or decline of opposing powers, setting a definitive limit to their lifespan. Act as an immovable, titanic force of cosmic law and final defense.'),
(11, 0, 'Twilight Giant',        'Embody the sunset of existence and absolute physical weight. Enforce the twilight or decline of opposing powers, setting a definitive limit to their lifespan. Act as an immovable, titanic force of cosmic law and final defense.');

-- SEQUENCE OF PATHWAY: RED PRIEST
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(12, 9, 'Hunter',                'Track targets and exploit environmental traps. Patiently track prey, study terrain, and use traps rather than raw force. Maintain high awareness of your surroundings to avoid becoming the prey.'),
(12, 8, 'Provoker',              'Manipulate enemies into losing emotional control. Use words, gestures, and insults to trigger blind rage in targets. Exploit the emotional slips of angry enemies to make them walk into traps.'),
(12, 7, 'Pyromaniac',            'Release and control destructive fire. Use fire to cleanse obstacles, flush out hidden targets, or cause panic. Understand the volatile nature of flames without letting them consume you.'),
(12, 6, 'Conspirator',           'Interweave lies, truths, and trends into inescapable traps. Orchestrate complex setups where even an enemy''s correct choices help your goal. Guide people and events using hidden strings so targets trap themselves.'),
(12, 5, 'Reaper',                'Deliver efficient, lethal strikes by finding vital weaknesses. Analyze an opponent''s physical or spiritual defenses to find one critical vulnerability. Execute sudden, overwhelming attacks that end combat instantly.'),
(12, 4, 'Iron-Blooded Knight',   'Forge individuals into a single, disciplined military force. Lead a team, gang, or army, binding their morale and strength to your own. Enforce strict discipline, shared sacrifice, and collective courage under fire.'),
(12, 3, 'War Bishop',            'Coordinate massive, multi-layered battlefronts. Manage large-scale conflicts, balancing logistics, traps, and open combat. Turn entire cities or regions into active tactical chessboards.'),
(12, 2, 'Weather Warlock',       'Adapt and weaponize macro-environmental conditions for war. Alter localized weather patterns to completely ruin enemy army movements. Create perfect natural opportunities for your own forces to strike.'),
(12, 1, 'Conqueror',             'Embody the concept of war, victory, and total conquest. Lead sweeping global or conceptual campaigns to subjugate opposing factions. Act as the supreme commander of conflict, turning all reality into a theater of war.'),
(12, 0, 'Red Priest',            'Embody the concept of war, victory, and total conquest. Lead sweeping global or conceptual campaigns to subjugate opposing factions. Act as the supreme commander of conflict, turning all reality into a theater of war.');

-- SEQUENCE OF PATHWAY: DEMONESS
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(13, 9, 'Assassin',              'Conceal yourself to eliminate high-value targets. Blend into crowds or shadows to strike unsuspecting targets cleanly. Escape smoothly without leaving identifying traces or clues behind.'),
(13, 8, 'Instigator',            'Create internal rifts and social chaos. Whisper rumors and exploit minor arguments to turn friends into bitter enemies. Trigger riots, rebellions, or family feuds from behind the scenes.'),
(13, 7, 'Witch',                 'Use charms, mirror magic, and black flames to manipulate reality. (Note: This sequence forces a physical gender transition to female). Utilize physical beauty, charms, and social grace to control powerful individuals. Master mirror illusions and curses to trap or redirect harm.'),
(13, 6, 'Pleasure Demoness',     'Entrap targets through intense desires and emotional dependence. Provide targets with their deepest physical or emotional desires to make them compliant. Weaponize love, lust, and obsession to hollow out an enemy''s willpower.'),
(13, 5, 'Affliction Demoness',   'Spread physical and emotional pain. Cultivate, breed, and spread localized plagues, sicknesses, and viruses. Feast on and digest the genuine despair, grief, and agony of affected populations.'),
(13, 4, 'Demoness of Unaging',   'Freeze your own state of being while watching others decay. Maintain perfect youth and beauty across long spans of time. Sacrifice the youth, life force, or vitality of others to sustain your own static immortality.'),
(13, 3, 'Demoness of Deception', 'Twist truths and obscure perceptions to cause structural collapse. Deceive entire organizations or nations into acting against their own survival. Make catastrophic threats appear completely harmless until it is too late.'),
(13, 2, 'Demoness of Catastrophe','Trigger sudden, large-scale disasters. Manifest major natural and social crises like earthquakes, famines, or sudden collapses. Act as the direct trigger for historical tragedies that ruin civilizations.'),
(13, 1, 'Demoness of Apocalypse','Bring the absolute end, chaos, and destruction to the universe. Guide the entire world toward total corruption, madness, and eventual annihilation. Act as the ultimate feminine entity of destruction, turning order back into primordial chaos.'),
(13, 0, 'Primordial Demoness',   'Bring the absolute end, chaos, and destruction to the universe. Guide the entire world toward total corruption, madness, and eventual annihilation. Act as the ultimate feminine entity of destruction, turning order back into primordial chaos.');

-- SEQUENCE OF PATHWAY: JUSTICIAR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(14, 9, 'Arbiter',               'Settle disputes and enforce fairness. Mediate conflicts between individuals or groups neutrally. Establish a reputation for being trustworthy and fair.'),
(14, 8, 'Sheriff',               'Maintain public order and apprehend criminals. Patrol communities to deter crime and hunt down lawbreakers. Enforce local laws, rules, and regulations strictly.'),
(14, 7, 'Interrogator',          'Extract hidden truths and break mental defenses. Use verbal pressure and psychological techniques to make targets confess. Uncover hidden motives, contraband, or secret plots.'),
(14, 6, 'Judge',                 'Pass official verdicts and define crimes. Weigh evidence objectively and issue appropriate punishments. Pronounce what acts are legally prohibited in a given area.'),
(14, 5, 'Disciplinarian',        'Strict enforcement of rules and behavioral correction. Punish infractions swiftly to reform bad behavior. Ensure groups or organizations follow rigid protocols without deviation.'),
(14, 4, 'Imperative Mage',       'Make your spoken commands act as physical laws. Issue verbal decrees that targets are forced to physically obey. Ban specific actions or elements from a battlefield using your authority.'),
(14, 3, 'Balance Worker',        'Maintain equilibrium and correct systemic anomalies. Weaken forces that are too strong and bolster those that are failing. Act as a stabilizing weight in highly chaotic or volatile situations.'),
(14, 2, 'Hand of Order',         'Reshape the physical and spiritual layout of reality. Reorganize chaotic environments into structured, predictable systems. Manipulate spatial and logical connections to uphold institutional control.'),
(14, 1, 'Justiciar',             'Enforce ultimate justice and absolute order. Become the living embodiment of law and fairness. Punish all wrongdoing with finality and absolute authority.'),
(14, 0, 'Prince of Abolition',   'Define, modify, and rewrite the laws of the universe. Abolish old, ineffective rules and establish absolute new cosmic decrees. Act as the ultimate, impartial executioner of absolute justice across reality.');

-- SEQUENCE OF PATHWAY: DARK EMPEROR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(15, 9, 'Lawyer',                'Use language and rules to your advantage. Argue effectively to bend rules without breaking them. Find technicalities in agreements to favor your clients or yourself.'),
(15, 8, 'Barbarian',             'Break through conventional social rules using raw dominance. Ignore refined manners and use aggressive, blunt force to bypass obstacles. Impose your personal will over weaker-willed individuals.'),
(15, 7, 'Briber',                'Use transactional exchanges to distort rules and morality. Give gifts or favors to alter someone''s judgment and duties. Turn rigid systems into transactional games where everything has a price.'),
(15, 6, 'Baron of Corruption',   'Distort the intentions behind actions and laws. Twist a target''s positive actions so they cause harmful results. Exploit systemic corruption to build your personal wealth and influence.'),
(15, 5, 'Mentor of Confusion',   'Disorient targets by scrambling logic and directions. Make targets lose their physical direction or logical train of thought. Create chaotic social or mental scenarios where standard rules no longer apply.'),
(15, 4, 'Earl of The Fallen',    'Magnify dark desires and induce moral decay. Encourage individuals or communities to give in to their deepest, hidden vices. Watch civilized societies collapse into chaotic lawlessness.'),
(15, 3, 'Frenzy Mage',           'Trigger uncontained, amplified chaos. Drive groups into a state of mass hysteria, panic, or wild rebellion. Overwhelm orderly systems by introducing explosive, unpredictable variables.'),
(15, 2, 'Duke of Distortion',    'Twist physical, spiritual, and conceptual realities. Distort distances, timeframes, or spell effects to confuse and defeat enemies. Make a false statement function temporarily as an absolute truth.'),
(15, 1, 'Prince of Distortions', 'Rule as a tyrannical monarch who resurrects through the laws they impose. Establish a massive, self-serving empire with laws tied directly to your life force. Use cosmic loopholes to cheat death and return to life through your citizens'' memory of your laws.'),
(15, 0, 'Black Emperor',         'Rule as a tyrannical monarch who resurrects through the laws they impose. Establish a massive, self-serving empire with laws tied directly to your life force. Use cosmic loopholes to cheat death and return to life through your citizens'' memory of your laws.');

-- SEQUENCE OF PATHWAY: MONSTER
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(16, 9, 'Monster',               'Perceive the overwhelming, hidden terrors of reality. Silently endure the frightening illusions and whispers only you can see. Behave oddly or speak in riddles due to the strange information you process.'),
(16, 8, 'Robot',                 'Use cold, detached logic to suppress overwhelming spiritual input. Act with absolute precision, suppressing your emotional outbursts. Calculate mathematical and environmental variables to predict immediate physical dangers.'),
(16, 7, 'Lucky One',             'Rely entirely on the unseen guidance of fate. Make blind choices without planning and let coincidence save you. Benefit constantly from improbable, fortunate strokes of luck.'),
(16, 6, 'Calamity Priest',       'Predict and survive sudden, localized disasters. Sense incoming accidents, fires, or collapses right before they happen. Position yourself safely while others are caught in the chaos.'),
(16, 5, 'Winner',                'Accumulate and actively spend luck like a currency. Take massive risks in gambling, combat, or life, relying on fate to guarantee victory. Balance your high luck with moments of severe, intentional misfortune to reset the scales.'),
(16, 4, 'Chaos Crawler',         'Navigate the shifting, unpredictable timelines of destiny. Move safely through chaotic spiritual spaces where cause and effect are broken. Observe multiple possible futures without letting your mind shatter from the variations.'),
(16, 3, 'Weaver of Fate',        'Intertwine and manipulate the luck of others. Connect the destinies of separate people so their successes or failures match. Give your bad luck to enemies while stealing the good fortune of targets.'),
(16, 2, 'Snake of Mercury',      'Embody the cyclical nature of time and reincarnation. Reboot your life cycle by resetting your age, memories, and physical state when facing crises. Observe the world as a repeating, endless loop of cause and effect.'),
(16, 1, 'Key of Destiny',        'Master the absolute flow of probability and destiny. Spin the metaphorical wheel to decide the absolute luck or ruin of entire civilizations. Act as the unmoving axis around which all universal probability, fate, and chance rotate.'),
(16, 0, 'Wheel of Fortune',      'Master the absolute flow of probability and destiny. Spin the metaphorical wheel to decide the absolute luck or ruin of entire civilizations. Act as the unmoving axis around which all universal probability, fate, and chance rotate.');

-- SEQUENCE OF PATHWAY: MOTHER
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(17, 9, 'Planter',               'Care for soil and nurture plant life. Cultivate crops, identify herbs, and maximize agricultural yields. Develop a deep, physical connection to the earth and natural seasons.'),
(17, 8, 'Doctor',                'Treat physical illnesses and save lives. Diagnose illnesses, brew medicines, and heal wounds meticulously. Value the preservation of living tissue and fight against premature death.'),
(17, 7, 'Harvest Priest',        'Celebrate abundance and spread agricultural knowledge. Teach communities efficient farming techniques to prevent famine. Lead joyful seasonal festivals thanking nature for its bounty.'),
(17, 6, 'Biologist',             'Study, crossbreed, and modify living organisms. Experiment with flora and fauna to create resilient, useful new species. Understand the anatomical and biological rules governing life.'),
(17, 5, 'Druid',                 'Channel the raw vitality of nature and shapeshift. Commune deeply with forests, wild animals, and natural ecosystems. Adopt animal traits to survive and protect the environment from artificial ruin.'),
(17, 4, 'Nature Scholar',        'Command the environment and breathe life into inanimate objects. Make barren lands bloom instantly with dense vegetation. Grant temporary consciousness or life to stones, water, or wooden structures.'),
(17, 3, 'Lifesaver',             'Reverse deathly conditions and maximize cellular healing. Pull individuals back from the brink of absolute biological death. Cure widespread, catastrophic plagues by accelerating immune cellular growth.'),
(17, 2, 'Desolate Matriarch',    'Govern territorial fertility and manage species reproduction. (Note: This sequence forces a physical gender transition to female). Control the birth rates, growth cycles, and population metrics of entire regions. Turn desolate, dead lands into rich, self-sustaining ecosystems.'),
(17, 1, 'Goddess of Nature',     'Embody the supreme source of all biological creation and life force. Create entirely new biological concepts, species, and ecosystems out of raw energy. Act as the universal matriarch who sustains, heals, and breeds all physical matter in existence.'),
(17, 0, 'Mother',                'Embody the supreme source of all biological creation and life force. Create entirely new biological concepts, species, and ecosystems out of raw energy. Act as the universal matriarch who sustains, heals, and breeds all physical matter in existence.');

-- SEQUENCE OF PATHWAY: MOON
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(18, 9, 'Apothecary',            'Craft herbal remedies and simple treatments. Diagnose common ailments and mix custom herbal salves or pills. Sell medicine to the needy, gaining a reputation as a helpful local healer.'),
(18, 8, 'Beast Tamer',           'Commune with and control wild animals. Tame, breed, and train dangerous creatures or guard animals. Understand the basic instincts and fears of beasts to neutralize them.'),
(18, 7, 'Vampire',               'Balance long life, beauty, and nocturnal hunting instincts. (Note: This sequence morphs the user into a Sanguine-like physiology). Adapt to a nocturnal lifestyle, maintaining high elegance and social grace. Manage your reliance on blood without letting feral instincts take over.'),
(18, 6, 'Potions Professor',     'Mass-produce complex, magical liquid mixtures. Discover and refine secret recipes for specialized magical potions. Teach others the meticulous chemistry and rules of brewing spiritual items.'),
(18, 5, 'Scarlet Scholar',       'Draw directly upon the mystical attributes of the moon. Perform rituals that change in power according to the lunar cycle. Create illusory or physical crimson dreamscapes to trap targets.'),
(18, 4, 'Shaman',                'Serve as a bridge to spirits and nature gods. Lead tribes or occult groups in worshiping ancient, primordial forces. Invite spirits to temporarily possess your body to deliver vital messages.'),
(18, 3, 'High Vampire',          'Command lesser nocturnal species and rule the dark. Govern clans of Sanguine, bats, wolves, and other creatures of the night. Establish absolute territory where your dark authority cannot be challenged.'),
(18, 2, 'Moon Angel',            'Radiate a distorting, beautiful lunar divinity. (Note: This sequence forces a physical gender transition to female). Hypnotize whole populations using overwhelming, divine beauty and charm. Corrupt or alter the biology of things exposed to your moonlight.'),
(18, 1, 'Beauty Goddess / Moon', 'Embody the absolute concept of the moon, reproduction, and nocturnal mystery. Control the tides, lunar cycles, and reproductive instincts of all mortal races. Act as the ultimate, seductive source of beauty and hidden nocturnal power in the cosmos.'),
(18, 0, 'Moon',                  'Embody the absolute concept of the moon, reproduction, and nocturnal mystery. Control the tides, lunar cycles, and reproductive instincts of all mortal races. Act as the ultimate, seductive source of beauty and hidden nocturnal power in the cosmos.');

-- SEQUENCE OF PATHWAY: HERMIT
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(19, 9, 'Mystery Pryer',         'Peer into the hidden, underlying magic of the world. Study ancient symbols, rare runes, and the secret geometry of reality. Examine magical phenomena from a safe distance to avoid going mad from the view.'),
(19, 8, 'Melee Scholar',         'Combine deep book knowledge with fast physical combat. Use analytical calculations to predict and counter an enemy''s physical strikes. Fight efficiently while wearing classic scholarly or academic attire.'),
(19, 7, 'Warlock',               'Master custom, versatile spellcasting formulas. Mix different elemental spells, curses, and hexes to handle unpredictable situations. Experiment with raw, volatile magic without relying on gods.'),
(19, 6, 'Scroll Professor',      'Create, store, and preserve powerful magical items. Inscribe highly volatile spells onto paper scrolls or charms for later use. Build a secure archive of rare, magical literature.'),
(19, 5, 'Constellation Scholar', 'Connect your spellcasting power to cosmic star patterns. Map the movement of stars to calculate when specific spells will be strongest. Draw down the mystical, crushing gravity or light of distant galaxies.'),
(19, 4, 'Mysticologist',         'Turn fairy tales, myths, and folklore into literal magic. Analyze common legends and recreate their logic to force specific outcomes. Live out parts of classic stories to anchor your magical powers.'),
(19, 3, 'Clarity Sage',          'Pierce through the deep illusions of the cosmos. See through hidden historical cover-ups and the disguises of demigods. Keep your mind perfectly objective while sorting through maddening cosmic data.'),
(19, 2, 'Sage of Knowledge',     'Function as a living, thinking encyclopedia of reality. Inject massive amounts of pure information into enemy minds to paralyze them. Pass down complex, advanced knowledge to guide the progress of mortal societies.'),
(19, 1, 'Peerless Scholar',      'Become the absolute text, code, and hidden engine of the universe. Read the entire universe as a giant book, modifying its words to change reality. Act as the final, silent guardian of all hidden knowledge and cosmic secrets.'),
(19, 0, 'Hermit',                'Become the absolute text, code, and hidden engine of the universe. Read the entire universe as a giant book, modifying its words to change reality. Act as the final, silent guardian of all hidden knowledge and cosmic secrets.');

-- SEQUENCE OF PATHWAY: PARAGON
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(20, 9, 'Savant',                'Master traditional craft skills and simple tools. Build, repair, and optimize everyday items like clocks, locks, and carriages. Help communities build better infrastructure to make life easier.'),
(20, 8, 'Archaeologist',         'Dig up and reconstruct lost technology from ancient ruins. Explore dangerous underground traps to find forgotten historical items. Clean, translate, and preserve ancient tech schematics.'),
(20, 7, 'Appraiser',             'Identify the exact functions and flaws of any object. Determine the history, value, and weak points of weapons or artifacts. Find the structural vulnerabilities in an enemy''s defensive armor.'),
(20, 6, 'Alchemist / Gearologist','Combine metallurgy with steam and gear machinery. Build autonomous mechanical items, weapons, or complex steam engines. Standardize factory parts to help trigger industrial progress.'),
(20, 5, 'Astronomer',            'Build precision lenses to observe the vast physical cosmos. Construct advanced telescopes to calculate the movements of physical planets. Apply stellar mathematics to invent highly accurate navigation tools.'),
(20, 4, 'Spiritual Alchemist',   'Infuse artificial machines with living human spirits or souls. Build massive, complex clockwork golems or thinking machines. Bridge the gap between cold metal and biological consciousness.'),
(20, 3, 'Master of Mechanics',   'Automate vast, interconnected factory systems. Design entire manufacturing networks that run without human help. Standardize major industrial systems across cities.'),
(20, 2, 'Knowledge Archangel',   'Inspire inventors to trigger massive industrial revolutions. Plant advanced scientific ideas into the minds of mortal engineers. Guide a society''s transition from primitive eras into highly advanced technological ages.'),
(20, 1, 'God of Steam',          'Embody the ultimate spirit of invention, logic, and material creation. Define the absolute physical laws of technology, structure, and engineering for reality. Act as the perfect, logical mind that crafts the material future of the cosmos.'),
(20, 0, 'Paragon',               'Embody the ultimate spirit of invention, logic, and material creation. Define the absolute physical laws of technology, structure, and engineering for reality. Act as the perfect, logical mind that crafts the material future of the cosmos.');

-- SEQUENCE OF PATHWAY: PRISONER
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(21, 9, 'Mutant',                'Adapt to a warped, physically irregular body. Survive and fight using irregular physical adaptations. Live on the edges of society where irregular appearances are ignored.'),
(21, 8, 'Lunatic',               'Release short, controlled bursts of absolute madness. Fight with wild, unpredictable fury, completely ignoring your own physical pain. Let chaotic thoughts clear out mental blocks before pulling yourself back to reality.'),
(21, 7, 'Werewolf',              'Balance bloodlust with animal loyalty. Transform into a feral form to hunt down targets efficiently. Form close-knit packs or groups, defending your allies fiercely.'),
(21, 6, 'Zombie',                'Embody a cold, unfeeling, and rigid physical state. Ignore freezing weather, heavy physical injuries, and emotional pressure. Command basic skeletons or corpses to serve as mindless assistants.'),
(21, 5, 'Wraith',                'Leave your physical shell behind to exist as an invisible spirit. Fly through solid walls and remain completely invisible to normal eyes. Possess human targets, forcing them to do things against their will.'),
(21, 4, 'Puppet',                'Treat your own physical body like a lifeless tool. Control your limbs with perfect, robotic precision, cutting off all pain signals. Turn enemies into literal wooden or flesh puppets by hijacking their nerves.'),
(21, 3, 'Disciple of Delights',  'Gorge on indulgences to understand the absolute limits of desire. Give in completely to wild physical pleasures, food, or luxury. Understand how desire traps the mind, learning to drop it entirely when needed.'),
(21, 2, 'Confrere of Malice',    'Spread heavy, structural restrictions to trap others. Build curses, traps, and legal/spiritual chains that lock targets down. Force entire communities to follow highly restrictive, painful rules.'),
(21, 1, 'God of Chained',        'Achieve complete spiritual freedom by putting your body in a permanent, absolute cage. Lock away your desires and physical form behind endless rules, seals, and restrictions. Act as the supreme paradox: an entity that holds ultimate spiritual freedom precisely because it is completely chained.'),
(21, 0, 'Chained',               'Achieve complete spiritual freedom by putting your body in a permanent, absolute cage. Lock away your desires and physical form behind endless rules, seals, and restrictions. Act as the supreme paradox: an entity that holds ultimate spiritual freedom precisely because it is completely chained.');

-- SEQUENCE OF PATHWAY: ABYSS
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(22, 9, 'Criminal',              'Break human laws and social contracts without remorse. Commit calculated crimes while avoiding law enforcement. Identify and exploit the security gaps in houses or banks.'),
(22, 8, 'Cold-Blooded Killer',   'Eliminate human targets with zero emotional attachment. Execute targets cleanly, ignoring their begs, tears, or pleas for mercy. Keep your heart rate and emotions perfectly flat during dangerous combat.'),
(22, 7, 'Serial Killer',         'Turn your acts of violence into precise, structured rituals. Plan and execute a series of thematic murders to feed a dark spiritual pattern. Leave specialized signatures or clues to mock law enforcement.'),
(22, 6, 'Devil',                 'Sense incoming danger and trick others into signing bad deals. Listen to your internal radar to escape police traps right before they close. Convince targets to willingly sign contracts that swap their souls for temporary wealth.'),
(22, 5, 'Desire Apostle',        'Control and weaponize the active emotional vices of targets. Find a target''s core weakness—like greed or envy—and blow it out of proportion. Make targets destroy themselves by giving in to their own out-of-control passions.'),
(22, 4, 'Demon of Terror',       'Personify pure, inescapable physical and spiritual dread. Paralyze entire towns or large groups using raw aura and terrifying threats. Feed on the authentic panic and horror of those trapped in your domain.'),
(22, 3, 'Duke of Despair',       'Destroy hope and make communities give up completely. Orchestrate long, exhausting crises that force populations into pure apathy. Watch civilized groups abandon their morals to survive a dark crisis.'),
(22, 2, 'Monarch of Malice',     'Establish a permanent, cruel empire built on fear. Govern territories using brutal laws, public executions, and heavy surveillance. Crush any trace of kindness or rebellion with immediate, extreme force.'),
(22, 1, 'Dark Angel',            'Embody the absolute bottomless pit of universal corruption, filth, and malice. Turn orderly worlds back into twisted, chaotic hellscapes. Act as the ultimate, corrupting weight that pulls all light and virtue down into a bottomless abyss.'),
(22, 0, 'Abyss',                 'Embody the absolute bottomless pit of universal corruption, filth, and malice. Turn orderly worlds back into twisted, chaotic hellscapes. Act as the ultimate, corrupting weight that pulls all light and virtue down into a bottomless abyss.');

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

INSERT INTO characters (first_name, last_name, origin_location_id, birth_epoch_id, birth_year, death_epoch_id, death_year, death_event, death_chapter_id, description) VALUES
('Zhou', 'Mingrui', 18, 0, NULL, NULL, NULL, NULL, NULL, 
 'Soul Transmigrator from China placed in a unkown world with mysterious gods watching. Insanely cautious and stingy with money.'),

('Audrey', 'Hall', 118, 5, 1332, NULL, NULL, NULL, NULL,
 'The daughter of a prominent Loen noble family, naive about the world she lives in, however, very curious about the mysterious world of beyonders'),

('Alger', 'Wilson', 6, 5, 1317, NULL, NULL, NULL, NULL,
 'A privateer captain with a dark past. A seasoned Beyonder that sails the sea searching for power and higher purpose.'),

('Derrick', 'Berg', 82, 5, 1335, NULL, NULL, NULL, NULL,
 'A young man searching for hope that his people in desperately need in the darkness of the foresaken land.'),

('Emlyn', 'White', 25, 5, 1312, NULL, NULL, NULL, NULL,
 'A pure-blooded Vampire, proud of his bloodline and arrogant. He enjoys collecting detailed dolls and stay at home.'),

('Cattleya', NULL, NULL, 5, 1332, NULL, NULL, NULL, NULL,
 'A pirate and captain of the ship Spirit of Pleasure. Lost connection to someone important to her she now travels the sea searching for answers and a path for herself'),

('Fors', 'Wall', 27, 5, 1326, NULL, NULL, NULL, NULL,
 'A writer who wants to explore the world given powers by a forgotten ancient family in the past she wants to learn more about the beyonder world. She is quite lazy and has a wild imagination.'),

('Xio', 'Derecha', 29, 5, 1326, NULL, NULL, NULL, NULL,
 'A bounty hunter and close partner of Fors Wall. Becomes a Beyonder and participates in Tarot Club activities.'),

('Leonard', 'Mitchell', 18, 5, 1324, NULL, NULL, NULL, NULL,
 'A Nighthawk colleague of Klein in Tingen City who acts as his mentor. Harbors a hidden secret that affects every decision he makes.'),

('Benson', 'Moretti', 18, 5, 1314, NULL, NULL, NULL, NULL,
 'A hard working brother seeking to provide for his family. Intelligent and curious from clerk to working in the Ministry of Finance in the Loen Kingdom.'),

('Melissa', 'Moretti', 18, 5, 1333, NULL, NULL, NULL, NULL,
 'Intelligent young lady absorbed in understanding and creating machinery studying as a machinery student in University.'),

('Dunn', 'Smith', 18, 5, 1315, 5, 1349,
 'Sacrificed his life consuming Saint Selena''s ashes and the characteristic of Megose to protect Tingen City during Ince Zangwill''s conspiracy.', 211,
 'A middle aged gentleman that protects the city of Tingen as captain of the Nighthawks. Memory is not as good as it could be and tries to make up for it by being a great captain who protects his team.'),

 ('Neil', 'Neil', 18, 5, 1288, 5, 1349,
 'Given forbidden knowledge by the hidden sage, he went mad thinking he could revive his wife turning and him to a monster, Dunn shooting him to end his suffering', 165,
 'A old man that works for the Tingen Nighthawks through his years he follows the motto "Do as you wish, but do no harm."'),

 ('Daly', 'Simone', 18, 5, 1325, 5, 1350, 
 'Klein turns Daly into a marionette to kill her peacefully instead of corruption turning her into a monster. Daly passes away peacefully with a smile on her face, believing she is dying in the arms of the man she loved.', 945,
 'A talented beyonder mastering the principles to quickly progress the levels towards godhood. Always fond of Dunn Smith and his caring nature.'),

 ('Azik', 'Eggers', 2, 4, NULL, NULL, NULL, NULL, NULL,
 'A wonderer that roamed the world forgetting his memories of his past, but always continues to live. Always close with death sticking with him and his fate.');


-- =============================================================
--  14. ALIASES
-- =============================================================

INSERT INTO aliases (character_id, name, description) VALUES
-- Klein Moretti (character_id = 1)
(1, 'Klein Moretti',         'The primary transmigrated identity Zhou Mingrui assumes in Tingen City and carries through his journey.'),
(1, 'The Fool',              'Zhou Mingrui''s persona as the mysterious convener of the Tarot Club above the gray fog.'),
(1, 'The World',             'Klein''s smurf account and designated field-operative persona within the Tarot Club.'),
(1, 'Sherlock Moriarty',     'Klein''s consulting detective alias while living and investigating in Backlund during Volume 2.'),
(1, 'Gehrman Sparrow',       'Klein''s cold, ruthless pirate-hunter persona across the Sonia Sea and Rorsted Archipelago during Volume 3.'),
(1, 'Dwayne Dantes',         'Klein''s charismatic, wealthy arms-dealer and philanthropist gentleman persona in Backlund during Volume 4.'),
(1, 'Merlin Hermes',         'Klein''s wandering magician persona granting wishes to ordinary people to digest the Miracle Invoker potion during Volume 7.'),

-- Audrey Hall (character_id = 2)
(2, 'Justice',               'Audrey''s code name as a founding member of the Tarot Club, named for the Major Arcana card.'),

-- Alger Wilson (character_id = 3)
(3, 'The Hanged Man',        'Alger''s code name as a founding member of the Tarot Club.'),

-- Derrick Berg (character_id = 4)
(4, 'The Sun',               'Derrick''s code name in the Tarot Club representing the hope and dawn of the City of Silver.'),

-- Emlyn White (character_id = 5)
(5, 'The Moon',              'Emlyn''s code name in the Tarot Club.'),

-- Cattleya (character_id = 6)
(6, 'The Hermit',            'Cattleya''s code name in the Tarot Club.'),
(6, 'Admiral of Stars',      'Cattleya''s famous pirate admiral title commanding the Future.'),

-- Fors Wall (character_id = 7)
(7, 'The Magician',          'Fors''s code name in the Tarot Club.'),

-- Xio Derecha (character_id = 8)
(8, 'Judgment',              'Xio''s code name in the Tarot Club.'),

-- Leonard Mitchell (character_id = 9)
(9, 'The Star',              'Leonard''s code name in the Tarot Club.'),
(9, 'Blazing Hearthfire',    'One of Leonard''s known Beyonder code names in poetry and internal operations.'),

-- Dunn Smith (character_id = 12)
(12, 'Captain Dunn',         'The affectionate title given by the Tingen Nighthawk squad members to their captain.'),

-- Neil Neil (character_id = 13)
(13, 'Old Neil',             'The respected senior civilian staff member and mystic mentor to Klein in Tingen.'),

-- Daly Simone (character_id = 14)
(14, 'Madam Daly',           'The charismatic and unconventional Spirit Medium respected by the Tingen squad.'),

-- Azik Eggers (character_id = 15)
(15, 'Mr. Azik',             'The polite honorific Klein uses for the ancient, gentle amnesiac teacher.'),
(15, 'Death Consul',         'Azik''s true historical title as the son of the Death God Salinger during the Balam Empire.');


-- =============================================================
--  15. LOC_FAC_TIME_RANGE (Location <-> Faction <-> Timeline)
-- =============================================================

INSERT INTO loc_fac_time_range (location_id, faction_id, role, is_headquarters, epoch_start_id, epoch_end_id, start_year, end_year) VALUES
(19, 2,  'Tingen city squad base and Chanis Gate vault guard', FALSE, 5, NULL, NULL, NULL),
(33, 2,  'Backlund regional operations center and red gloves elite squad staging area', FALSE, 5, NULL, NULL, NULL),

(25, 3,  'Backlund industrial sector unit', FALSE, 5, NULL, NULL, NULL),
(69, 3,  'Headquarter of the Church of the God of Steam, The location for advanced technological research and innovation for the Savant pathway.', TRUE, 5, NULL, NULL, NULL),

(32, 4,  'Backlund diocese naval combat squad', FALSE, 5, NULL, NULL, NULL),
(41, 4,  'Port security and maritime Beyonder enforcement protecting the Loen Navy', FALSE, 5, NULL, NULL, NULL),
(106, 4, 'Global naval command base for the Church of the Lord of Storms', TRUE, 5, NULL, NULL, NULL),

(2,  7,  'Hidden all over the southern continent creating havoc and chaos as a terrorist organization', FALSE, 5, NULL, NULL, NULL),
(82, 7,  'Active within the Paz Valley creating religious cults to support their global power', TRUE, 5, NULL, NULL, NULL),

(38, 8,  'Covert Backlund hideout and underground gathering point for the Temperance faction', FALSE, 5, NULL, NULL, NULL),

(17, 13, 'Sovereign national territory', FALSE, 5, NULL, NULL, NULL),
(35, 13, 'Royal residence of the Augustus dynasty', TRUE, 5, NULL, NULL, NULL),
(97, 13, 'The Sonia Sea colonies of the Loen Kingdom', FALSE, 5, NULL, NULL, NULL),
(83, 13, 'The Southern Continent Colony of the Loen Kingdom', FALSE, 5, NULL, NULL, NULL),

(51, 14, 'Sovereign national territory', FALSE, 5, NULL, NULL, NULL),
(52, 14, 'Imperial capital and royal palace of the Einhorn family', TRUE, 5, NULL, NULL, NULL),

(56, 15, 'Sovereign national territory', FALSE, 5, NULL, NULL, NULL),
(66, 15, 'Electoral executive residence and political headquarters', TRUE, 5, NULL, NULL, NULL);


-- =============================================================
--  16. CHAR_SEQ_CHAPTER_RANGE (Character <-> Sequence Progression)
-- =============================================================

INSERT INTO char_seq_chapter_range (character_id, sequence_id, chapter_start_id, chapter_end_id) VALUES
-- ── Klein Moretti (Zhou Mingrui - Pathway 1 Fool) ──
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 35 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 164 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 165 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 313 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 314 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 482 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 483 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 732 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 733 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 946 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 4), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 947 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1150 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 3), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1151 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1266 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 2), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1267 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1352 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1353 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1383 LIMIT 1)),
(1, (SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 0), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1384 LIMIT 1), NULL),

-- ── Audrey Hall (Miss Justice - Pathway 5 Visionary) ──
(2, (SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 6 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 162 LIMIT 1)),
(2, (SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 163 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 475 LIMIT 1)),
(2, (SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 476 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 800 LIMIT 1)),
(2, (SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 801 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1120 LIMIT 1)),
(2, (SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1121 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1300 LIMIT 1)),
(2, (SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 4), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1301 LIMIT 1), NULL),

-- ── Alger Wilson (The Hanged Man - Pathway 6 Tyrant) ──
(3, (SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 250 LIMIT 1)),
(3, (SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 251 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 530 LIMIT 1)),
(3, (SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 531 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 850 LIMIT 1)),
(3, (SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 851 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1210 LIMIT 1)),
(3, (SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 4), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1211 LIMIT 1), NULL),

-- ── Derrick Berg (The Sun - Pathway 4 Sun) ──
(4, (SELECT sequence_id FROM sequences WHERE pathway_id = 4 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 10 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 185 LIMIT 1)),
(4, (SELECT sequence_id FROM sequences WHERE pathway_id = 4 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 186 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 420 LIMIT 1)),
(4, (SELECT sequence_id FROM sequences WHERE pathway_id = 4 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 421 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 710 LIMIT 1)),
(4, (SELECT sequence_id FROM sequences WHERE pathway_id = 4 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 711 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 980 LIMIT 1)),
(4, (SELECT sequence_id FROM sequences WHERE pathway_id = 4 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 981 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1240 LIMIT 1)),
(4, (SELECT sequence_id FROM sequences WHERE pathway_id = 4 AND position = 4), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1241 LIMIT 1), NULL),

-- ── Emlyn White (The Moon - Pathway 18 Moon) ──
(5, (SELECT sequence_id FROM sequences WHERE pathway_id = 18 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 190 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 370 LIMIT 1)),
(5, (SELECT sequence_id FROM sequences WHERE pathway_id = 18 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 371 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 650 LIMIT 1)),
(5, (SELECT sequence_id FROM sequences WHERE pathway_id = 18 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 651 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 950 LIMIT 1)),
(5, (SELECT sequence_id FROM sequences WHERE pathway_id = 18 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 951 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1210 LIMIT 1)),
(5, (SELECT sequence_id FROM sequences WHERE pathway_id = 18 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1211 LIMIT 1), NULL),

-- ── Cattleya (The Hermit - Pathway 19 Hermit) ──
(6, (SELECT sequence_id FROM sequences WHERE pathway_id = 19 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 500 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1150 LIMIT 1)),
(6, (SELECT sequence_id FROM sequences WHERE pathway_id = 19 AND position = 4), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1151 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1350 LIMIT 1)),
(6, (SELECT sequence_id FROM sequences WHERE pathway_id = 19 AND position = 3), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1351 LIMIT 1), NULL),

-- ── Fors Wall (The Magician - Pathway 2 Door) ──
(7, (SELECT sequence_id FROM sequences WHERE pathway_id = 2 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 180 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 340 LIMIT 1)),
(7, (SELECT sequence_id FROM sequences WHERE pathway_id = 2 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 341 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 620 LIMIT 1)),
(7, (SELECT sequence_id FROM sequences WHERE pathway_id = 2 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 621 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 920 LIMIT 1)),
(7, (SELECT sequence_id FROM sequences WHERE pathway_id = 2 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 921 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1190 LIMIT 1)),
(7, (SELECT sequence_id FROM sequences WHERE pathway_id = 2 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1191 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1340 LIMIT 1)),
(7, (SELECT sequence_id FROM sequences WHERE pathway_id = 2 AND position = 4), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1341 LIMIT 1), NULL),

-- ── Xio Derecha (Judgment - Pathway 14 Justiciar) ──
(8, (SELECT sequence_id FROM sequences WHERE pathway_id = 14 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 180 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 500 LIMIT 1)),
(8, (SELECT sequence_id FROM sequences WHERE pathway_id = 14 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 501 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 890 LIMIT 1)),
(8, (SELECT sequence_id FROM sequences WHERE pathway_id = 14 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 891 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1180 LIMIT 1)),
(8, (SELECT sequence_id FROM sequences WHERE pathway_id = 14 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1181 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1340 LIMIT 1)),
(8, (SELECT sequence_id FROM sequences WHERE pathway_id = 14 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1341 LIMIT 1), NULL),

-- ── Leonard Mitchell (The Star - Pathway 9 Darkness) ──
(9, (SELECT sequence_id FROM sequences WHERE pathway_id = 9 AND position = 8), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 211 LIMIT 1)),
(9, (SELECT sequence_id FROM sequences WHERE pathway_id = 9 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 212 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 680 LIMIT 1)),
(9, (SELECT sequence_id FROM sequences WHERE pathway_id = 9 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 681 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1050 LIMIT 1)),
(9, (SELECT sequence_id FROM sequences WHERE pathway_id = 9 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1051 LIMIT 1), NULL),

-- ── Dunn Smith (Pathway 9 Darkness) ──
(12, (SELECT sequence_id FROM sequences WHERE pathway_id = 9 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 211 LIMIT 1)),

-- ── Neil Neil (Old Neil - Pathway 19 Hermit) ──
(13, (SELECT sequence_id FROM sequences WHERE pathway_id = 19 AND position = 9), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 165 LIMIT 1)),

-- ── Daly Simone (Pathway 10 Death) ──
(14, (SELECT sequence_id FROM sequences WHERE pathway_id = 10 AND position = 7), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 350 LIMIT 1)),
(14, (SELECT sequence_id FROM sequences WHERE pathway_id = 10 AND position = 6), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 351 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 700 LIMIT 1)),
(14, (SELECT sequence_id FROM sequences WHERE pathway_id = 10 AND position = 5), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 701 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 945 LIMIT 1)),

-- ── Azik Eggers (Pathway 10 Death - Sequence 2 Angel) ──
(15, (SELECT sequence_id FROM sequences WHERE pathway_id = 10 AND position = 2), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL);


-- =============================================================
--  17. CHAR_FAC_CHAPTER_RANGE (Character <-> Faction Membership)
-- =============================================================

INSERT INTO char_fac_chapter_range (character_id, faction_id, chapter_start_id, chapter_end_id, role) VALUES
-- Klein Moretti
(1, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL, 'Founder and Presiding God ("The Fool")'),
(1, (SELECT faction_id FROM factions WHERE name = 'Nighthawks'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 13 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 211 LIMIT 1), 'Civilian Staff and Tingen Squad Official Beyonder'),
(1, (SELECT faction_id FROM factions WHERE name = 'Church of the Evernight Goddess'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 760 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1150 LIMIT 1), 'Distinguished Benefactor and Affiliated Deacon (as Dwayne Dantes)'),

-- Audrey Hall
(2, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL, 'Founding Member ("Justice")'),
(2, (SELECT faction_id FROM factions WHERE name = 'Psychology Alchemists'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 163 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1200 LIMIT 1), 'Infiltrator and Backlund Councillor'),

-- Alger Wilson
(3, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL, 'Founding Member ("The Hanged Man")'),
(3, (SELECT faction_id FROM factions WHERE name = 'Mandated Punisher'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL, 'Captain and Senior Naval Official'),

-- Derrick Berg
(4, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 10 LIMIT 1), NULL, 'Tarot Club Member ("The Sun")'),
(4, (SELECT faction_id FROM factions WHERE name = 'City of Silver'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL, 'Youth Patrol Beyonder and Six-Member Council Elder'),

-- Fors Wall
(7, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 180 LIMIT 1), NULL, 'Tarot Club Member ("The Magician")'),
(7, (SELECT faction_id FROM factions WHERE name = 'Abraham Family'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1100 LIMIT 1), NULL, 'Direct Disciple of Elder Dorian Gray Abraham'),

-- Emlyn White
(5, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 190 LIMIT 1), NULL, 'Tarot Club Member ("The Moon")'),

-- Leonard Mitchell
(9, (SELECT faction_id FROM factions WHERE name = 'Nighthawks'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 211 LIMIT 1), 'Tingen City Squad Official Beyonder'),
(9, (SELECT faction_id FROM factions WHERE name = 'Nighthawks'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 212 LIMIT 1), NULL, 'Red Gloves Elite Operations Captain'),
(9, (SELECT faction_id FROM factions WHERE name = 'Tarot Club'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 708 LIMIT 1), NULL, 'Tarot Club Member ("The Star")'),

-- Dunn Smith
(12, (SELECT faction_id FROM factions WHERE name = 'Nighthawks'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 211 LIMIT 1), 'Captain of the Tingen City Nighthawk Squad'),

-- Old Neil
(13, (SELECT faction_id FROM factions WHERE name = 'Nighthawks'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 165 LIMIT 1), 'Mystic Archivist and Senior Civilian Staff'),

-- Daly Simone
(14, (SELECT faction_id FROM factions WHERE name = 'Nighthawks'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 945 LIMIT 1), 'Spirit Medium Specialist');


-- =============================================================
--  18. CHAR_ART_CHAPTER_RANGE (Character <-> Artifact Possession)
-- =============================================================

INSERT INTO char_art_chapter_range (character_id, artifact_id, chapter_start_id, chapter_end_id, acquisition_type) VALUES
-- Klein Moretti
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Azik''s Copper Whistle'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 47 LIMIT 1), NULL, 'Gift from teacher Azik Eggers for spirit communication'),
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Master Key'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 170 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 480 LIMIT 1), 'Purchased at Mr. Eye of Wisdom''s Backlund occult gathering'),
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Sun Brooch'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 180 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 733 LIMIT 1), 'Acquired from Tarot Club trade with Derrick Berg'),
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Biological Poison Bottle'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 350 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 732 LIMIT 1), 'Looted from the deceased Ambis mentor in Backlund'),
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Creeping Hunger'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 438 LIMIT 1), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1352 LIMIT 1), 'Looted after the demise of Pirate Admiral Qilangos and purified above the gray fog'),
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Arrodes'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 375 LIMIT 1), NULL, 'Formed mystical soul contract as master and humble magical mirror'),
(1, (SELECT artifact_id FROM artifacts WHERE name = 'Staff of the Stars'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 948 LIMIT 1), NULL, 'Crafted combining Box of the Great Old Ones and Key of Stars characteristic'),

-- Fors Wall
(7, (SELECT artifact_id FROM artifacts WHERE name = 'Leymano''s Travels'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 580 LIMIT 1), NULL, 'Gift from Mr. Fool crafted by The Sun'),

-- Leonard Mitchell
(9, (SELECT artifact_id FROM artifacts WHERE name = 'Nightmare Realm Painting'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 700 LIMIT 1), NULL, 'Assigned by Church of the Evernight for Red Gloves squad deployment'),

-- Alger Wilson
(3, (SELECT artifact_id FROM artifacts WHERE name = 'Word of the Sea'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 450 LIMIT 1), NULL, 'Custom-forged bone cane created using sea monster characteristic'),

-- Azik Eggers
(15, (SELECT artifact_id FROM artifacts WHERE name = 'Death Consul Ring'), (SELECT chapter_id FROM chapters WHERE volume_id <= 8 AND chapter_number = 1 LIMIT 1), NULL, 'Personal heritage ring from the Fourth Epoch Balam Empire');


-- =============================================================
--  19. SEQUENCE_MATERIAL (Potion Formulas / Ingredients)
-- =============================================================

INSERT INTO sequence_material (sequence_id, material_id, quantity, unit) VALUES
-- Seer (Pathway 1, Sequence 9)
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Lavos Squid Blood'), 10, 'ml'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Stella Aqua Crystal'), 50, 'g'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Siren Spinal Fluid'), 5, 'drops'),

-- Clown (Pathway 1, Sequence 8)
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 8), (SELECT material_id FROM materials WHERE name = 'Hornacis Shadow Wolf Horn'), 1, 'horn'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 8), (SELECT material_id FROM materials WHERE name = 'Real Clown Fish Blood'), 10, 'ml'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 8), (SELECT material_id FROM materials WHERE name = 'Golden Rose Stem'), 7, 'stalks'),

-- Magician (Pathway 1, Sequence 7)
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 7), (SELECT material_id FROM materials WHERE name = 'Mist Stalker Characteristic'), 1, 'characteristic'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 7), (SELECT material_id FROM materials WHERE name = 'Devil''s Bone Powder'), 40, 'g'),

-- Faceless (Pathway 1, Sequence 6)
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 6), (SELECT material_id FROM materials WHERE name = 'Thousand-faced Hunter Leather'), 1, 'hide'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 6), (SELECT material_id FROM materials WHERE name = 'Shadow Wolf Gland'), 1, 'gland'),

-- Nimblewright Master / Marionettist (Pathway 1, Sequence 5)
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 5), (SELECT material_id FROM materials WHERE name = 'Spirit Eater Core'), 1, 'core'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 1 AND position = 5), (SELECT material_id FROM materials WHERE name = 'Golden-eyed Tree Frog Gland'), 1, 'gland'),

-- Spectator (Pathway 5, Sequence 9)
((SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Dragon Eyeball'), 1, 'pair'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Mutated Pituitary Gland'), 1, 'gland'),

-- Telepathist (Pathway 5, Sequence 8)
((SELECT sequence_id FROM sequences WHERE pathway_id = 5 AND position = 8), (SELECT material_id FROM materials WHERE name = 'Rainbow Salamander Gland'), 1, 'gland'),

-- Sailor (Pathway 6, Sequence 9)
((SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Sea Monster Core'), 1, 'core'),
((SELECT sequence_id FROM sequences WHERE pathway_id = 6 AND position = 9), (SELECT material_id FROM materials WHERE name = 'Wind Spirit Tree Fruit'), 1, 'fruit');


-- =============================================================
--  20. ARTIFACT_ABILITY (Artifacts <-> Granted Beyonder Abilities)
-- =============================================================

INSERT INTO artifact_ability (artifact_id, ability_id) VALUES
-- Azik's Copper Whistle -> Minor Undead Command, Spirit Vision
((SELECT artifact_id FROM artifacts WHERE name = 'Azik''s Copper Whistle'), (SELECT ability_id FROM abilities WHERE name = 'Minor Undead Command')),
((SELECT artifact_id FROM artifacts WHERE name = 'Azik''s Copper Whistle'), (SELECT ability_id FROM abilities WHERE name = 'Spirit Vision')),

-- Creeping Hunger -> Ability Copy, Surface Thought Reading
((SELECT artifact_id FROM artifacts WHERE name = 'Creeping Hunger'), (SELECT ability_id FROM abilities WHERE name = 'Ability Copy')),
((SELECT artifact_id FROM artifacts WHERE name = 'Creeping Hunger'), (SELECT ability_id FROM abilities WHERE name = 'Surface Thought Reading')),

-- Word of the Sea -> Water Manipulation
((SELECT artifact_id FROM artifacts WHERE name = 'Word of the Sea'), (SELECT ability_id FROM abilities WHERE name = 'Water Manipulation')),

-- Arrodes -> Divination, Surface Thought Reading
((SELECT artifact_id FROM artifacts WHERE name = 'Arrodes'), (SELECT ability_id FROM abilities WHERE name = 'Divination')),
((SELECT artifact_id FROM artifacts WHERE name = 'Arrodes'), (SELECT ability_id FROM abilities WHERE name = 'Surface Thought Reading'));
