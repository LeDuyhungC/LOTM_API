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
    'It follows protagonist Lumian Lee in a 1930s France-inspired setting blending vintage European aesthetics with cosmic horror, acting as a narrative bridge while Klein Moretti remains asleep',
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
('Tenebrous World', 'Governs inner shadows, taboos, curses, and emotional manipulation.')

-- =============================================================
--  3. EPOCHS
-- =============================================================

INSERT INTO epochs (name, years, description) VALUES
('First Epoch', 981, 'The Age of Chaos, It began when the Original Creator fully awakened from slumber, destroying modern human civilization and shattering into the 22 Beyonder pathways and various Sephiroths.'),
('Second Epoch',2561, 'The Dark Epoch or the Age of the Ancient Gods, It was a brutal era where humanity was weak and enslaved, and the world was ruled completely by powerful non-human races and innate Ancient Gods. The chaos of this brutal era eventually shifted during the cataclysmic conflicts that led to the rise of the Ancient Sun God.'),
('Third Epoch', 1086 , 'Humanity finally stepped out from under the shadows and slavery of older, tyrannical alien races, outpacing them in growth. The epoch ended in a massive cataclysm triggered when the Ancient Sun God was betrayed by His own Kings of Angels and faced internal mental collapse from the awakening of the Primordial God Almighty. Civilization reset, and the continents were permanently fractured.'),
('Fourth Epoch', 1233, 'the Epoch of the Gods. It began with the death of the Ancient Sun God and the appearance of the Second Blasphemy Slate, leading to an era where Sequence 0 deities and angels openly walked the earth and fought for supreme rule. Soloman first empire founded after the fall of the Ancient Sun God united the leftover continents after the collapse of the Soloman empire split empires were formed Soloman, Tudor Trunsoest, and Balam Empires. War of the Four Emperors resulted in the madness and death of the contending emperors, the reshaping of the continent''s political landscape, and the establishment of the current orthodox churches and kingdoms of the Fifth Epoch.'),
('Fifth Epoch',  1349, 'The current era. An age of steam and industry, roughly analogous to the Victorian period. Klein Moretti''s story takes place around year 1349-1352 of this epoch.');


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
('Azik''s Copper Whistle',          'A small copper whistle belonging to the ancient postman Azik Eggers. When blown, it can summon and command the undead within range. Given to Klein by Azik himself.',  null),
('Interrogator',                    'A sealed artifact in the form of a revolver. Bullets fired compel targets to answer questions truthfully. Considered a Sequence 4 sealed artifact.',                   '3-0782'),
('Biological Poison Bottle',        'A sealed artifact containing a self-replicating biological toxin. Highly dangerous; classified as a Sequence 2 sealed artifact.',                                      '3-0622'),
('Antigonus Family Notebook',       'An ancient notebook containing classified knowledge of the Antigonus family. One of the most dangerous sealed artifacts. Possession alone causes madness over time.',  null),
('Siren''s Whistle',                'A whistle that mimics the call of a Siren, capable of luring and entrancing nearby targets. Classified Sequence 2.',                                                  null),
('Tinder''s Flames',                'A vial containing a fragment of the Eternal Blazing Sun''s fire. Devastating against darkness-type Beyonders.',                                                       null),
('Nightmare Realm Painting',        'A painting that drags viewers into a Nightmare Realm. Associated with the Moon pathway.',                                                                              '1-42'),
('Evernight Goddess Blessed Sword', 'A long sword blessed by the Evernight Goddess. Effective against the undead and creatures of darkness.',                                                               '0-012');


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
 'The primary continent where most of the story takes place. Home to the Loen Kingdom, Feysac Empire, and Intis Republic.',
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
        'The local headquarters for the Church of the God of Steam and Machinery, acting as a testament to the city''s advanced industrial architecture.',
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
 10, 5, NULL);

-- =============================================================
--  10. PATHWAYS 
-- =============================================================

('Sefirah Castle', 'Governs the concepts of history, space, destiny, and the Spirit World.'),
('Chaos Sea', 'Governs the concepts of omniscience, omnipotence, mind, and the Astral World.'),
('River of Eternal Darkness', 'Governs the transition of life, erasure, and absolute quiet.'),
('City of Calamity', 'Governs pure chaos, disaster, conflict, and physical devastation.'),
('Nation of Disorder', 'Governs the creation, manipulation, and exploitation of universal laws.'),
('Key of Light', 'Governs probability, luck, and the flow of time.'),
('Brood Hive', 'Governs reproduction, evolution, decay, and the physical world.'),
('Knowledge Moor', 'Governs information, hidden knowledge, and mystical logic.'),
('Tenebrous World', 'Governs inner shadows, taboos, curses, and emotional manipulation.')

INSERT INTO pathways (sefirot_id, names, color, description) VALUES
-- Sephirot: Safirah Castle
(1, ['Fool', 'Seer'], '#808080', 'Change, history, secrets, concealment, puppet-strings, and the unknown.'),
(1, ['Door', 'Aprentice'], '#0B132B', 'Space, sealing, wandering, copying, and conceptual passage.'),
(1, ['Error', 'Marauder'], '#EBF1F5', 'Time, loopholes, parasitism, theft, deception, and avatars.'),
-- Sephirot: Chaos Sea
(2, ['Sun', 'Bard'], '#FFD700', 'Light, purification, contracts, oaths, and absolute righteousness.'),
(2, ['Visionary', 'Spectator'], '#70D6FF', 'Mind, imagination, creation, virtual reality, and psychological manipulation.'),
(2, ['Tyrant', 'Sailor'], '#001F54', 'Storms, lightning, water, absolute authority, and raw physical destruction.'),
(2, ['Hanged Man', 'Secrets Suppliant'], '#800000', 'Sacrifice, degenerated flesh, grazing/absorbing powers, and spiritual degeneration.'),
(2, ['White Tower', 'Reader'], '#E0FBFC', 'Omniscience, learning, imitation, analysis, and prophetic deduction.'),
-- River of Eternal Darkness
(3, ['Darkness', 'Sleepless'], '#1A0A2A', 'Night, peaceful sleep, misfortune, horror, and permanent erasure.'),
(3, ['Death', 'Corpse Collector'], '#3D3D3D', 'The underworld, souls, structural decay, animation, and eternal rest.'),
(3, ['Twilight Giant, 'Warrior'], '#FF4500', 'Combat, defense, physical decay, the end, and honor.'),
-- City of Calamity
(4, ['Red Priest', 'Hunter'], '#B22222', 'War, fire, tactical conspiracy, provocateering, and collective military force.'),
(4, ['Demoness', 'Assassin'], '#111111', 'Catastrophe, disease, mirrors, temptation, physical transmutation, and frost.'),
-- Nation of Disorder
(5, ['Justiciar, Arbitor'], '#005f73', 'Absolute rules, prohibition, judgment, execution, and unyielding order.'),
(5, ['Dark Emperor', 'Lawyer'], '#000000', 'Distortion, law manipulation, shadow order, magnification, and rebirth.'),
-- Key of Light
(6, ['Monster', 'Wheel of Fortune'], '#FFDF00', 'Fate, luck, probability, reincarnation, and destiny.'),
-- Brood Hive
(7, ['Mother', 'Planter'], '#2E7D32', 'Earth, nature, fertility, plant life, and physical growth.'),
(7, ['Moon', 'Apothecary'], '#990000', 'Life energy, blood, potions/herbs, and reproductive cycles.'),
-- Knowledge Moor
(8, ['Hermit', 'Mystery Pryer'], '#480082', 'Mysticism, information stream, ancient hidden knowledge, and hidden fairy-tales.'),
(8, ['Paragon', 'Savant'], '#6A0DAD', 'Technology, mechanics, civilization, craftsmanship, and physical creation.'),
-- Tenebrous World
(9, ['Prisoner', 'Mutant'], '#4A3B32', 'Desires, physical restraint, spiritual release, and primal beasts.'),
(9, ['Abyss', 'Criminal'], '#A9A9A9', 'Corruption, pure malice, continuous degradation, and dark desires.')

-- =============================================================
--  11. SEQUENCES 
-- =============================================================

-- SEQUENCE OF PATHWAY: FOOL
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(1, 9, 'Seer',                   'Remain a neutral interpreter of the spirit world. Avoid arrogance, and remember that divination offers probabilities, not absolute absolute certainties'),
(1, 8, 'Clown',                  'Bring laughter to others while masking your own true pain, terror, and helplessness behind a colorful, deliberate performance.'),
(1, 7, 'Magician',               'A magician always commands the stage, distracts the audience with illusions, and relies on precise preparation to turn the impossible into reality.'),
(1, 6, 'Faceless',               'Fully immerse yourself in other identities to understand their lives, but keep a firm grip on your original anchor.'),
(1, 5, 'Nimblewright Master',    'Manipulate and choreograph the actions of your targets from the shadows, maintaining absolute detachment while pulling the strings.'),
(1, 4, 'Bizarro Sorcerer',       'Act as a terrifying director of a grotesque spectacle, using fear to manipulate reality and break the mental defense of your enemies.'),
(1, 3, 'Scholar of Yore',        'Resurrect historical truths, respect the weight of past eras, and maintain complete neutrality without getting emotionally entangled in modern events.'),
(1, 2, 'Miracle Invoker',        'Act as a wish-granting deity. The profound contrast between fulfilling the impossible for ordinary humans while gaining nothing yourself.'),
(1, 1, 'Attendant of Mysteries', 'Maintain the boundaries of reality and the spirit world, manipulating hidden concepts while acting as a loyal steward of the cosmos.'),
(1, 0, 'The Fool',               'Blind the world to actual truths by establishing massive, universe-altering conceptual deceptions, ultimately liberating reality from its rigid rules.');

-- SEQUENCE OF PATHWAY: DOOR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(2, 9, 'Seer',                   'Remain a neutral interpreter of the spirit world. Avoid arrogance, and remember that divination offers probabilities, not absolute absolute certainties'),
(2, 8, 'Clown',                  'Bring laughter to others while masking your own true pain, terror, and helplessness behind a colorful, deliberate performance.'),
(2, 7, 'Magician',               'A magician always commands the stage, distracts the audience with illusions, and relies on precise preparation to turn the impossible into reality.'),
(2, 6, 'Faceless',               'Fully immerse yourself in other identities to understand their lives, but keep a firm grip on your original anchor.'),
(2, 5, 'Nimblewright Master',    'Manipulate and choreograph the actions of your targets from the shadows, maintaining absolute detachment while pulling the strings.'),
(2, 4, 'Bizarro Sorcerer',       'Act as a terrifying director of a grotesque spectacle, using fear to manipulate reality and break the mental defense of your enemies.'),
(2, 3, 'Scholar of Yore',        'Resurrect historical truths, respect the weight of past eras, and maintain complete neutrality without getting emotionally entangled in modern events.'),
(2, 2, 'Miracle Invoker',        'Act as a wish-granting deity. The profound contrast between fulfilling the impossible for ordinary humans while gaining nothing yourself.'),
(2, 1, 'Attendant of Mysteries', 'Maintain the boundaries of reality and the spirit world, manipulating hidden concepts while acting as a loyal steward of the cosmos.'),
(2, 0, 'The Fool',               'Blind the world to actual truths by establishing massive, universe-altering conceptual deceptions, ultimately liberating reality from its rigid rules.');

-- SEQUENCE OF PATHWAY: ERROR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(2, 9, 'Seer',                   'Remain a neutral interpreter of the spirit world. Avoid arrogance, and remember that divination offers probabilities, not absolute absolute certainties'),
(2, 8, 'Clown',                  'Bring laughter to others while masking your own true pain, terror, and helplessness behind a colorful, deliberate performance.'),
(2, 7, 'Magician',               'A magician always commands the stage, distracts the audience with illusions, and relies on precise preparation to turn the impossible into reality.'),
(2, 6, 'Faceless',               'Fully immerse yourself in other identities to understand their lives, but keep a firm grip on your original anchor.'),
(2, 5, 'Nimblewright Master',    'Manipulate and choreograph the actions of your targets from the shadows, maintaining absolute detachment while pulling the strings.'),
(2, 4, 'Bizarro Sorcerer',       'Act as a terrifying director of a grotesque spectacle, using fear to manipulate reality and break the mental defense of your enemies.'),
(2, 3, 'Scholar of Yore',        'Resurrect historical truths, respect the weight of past eras, and maintain complete neutrality without getting emotionally entangled in modern events.'),
(2, 2, 'Miracle Invoker',        'Act as a wish-granting deity. The profound contrast between fulfilling the impossible for ordinary humans while gaining nothing yourself.'),
(2, 1, 'Attendant of Mysteries', 'Maintain the boundaries of reality and the spirit world, manipulating hidden concepts while acting as a loyal steward of the cosmos.'),
(2, 0, 'The Fool',               'Blind the world to actual truths by establishing massive, universe-altering conceptual deceptions, ultimately liberating reality from its rigid rules.');

-- SEQUENCE OF PATHWAY: DOOR
INSERT INTO sequences (pathway_id, position, name, description) VALUES
(2, 9, 'Seer',                   'Remain a neutral interpreter of the spirit world. Avoid arrogance, and remember that divination offers probabilities, not absolute absolute certainties'),
(2, 8, 'Clown',                  'Bring laughter to others while masking your own true pain, terror, and helplessness behind a colorful, deliberate performance.'),
(2, 7, 'Magician',               'A magician always commands the stage, distracts the audience with illusions, and relies on precise preparation to turn the impossible into reality.'),
(2, 6, 'Faceless',               'Fully immerse yourself in other identities to understand their lives, but keep a firm grip on your original anchor.'),
(2, 5, 'Nimblewright Master',    'Manipulate and choreograph the actions of your targets from the shadows, maintaining absolute detachment while pulling the strings.'),
(2, 4, 'Bizarro Sorcerer',       'Act as a terrifying director of a grotesque spectacle, using fear to manipulate reality and break the mental defense of your enemies.'),
(2, 3, 'Scholar of Yore',        'Resurrect historical truths, respect the weight of past eras, and maintain complete neutrality without getting emotionally entangled in modern events.'),
(2, 2, 'Miracle Invoker',        'Act as a wish-granting deity. The profound contrast between fulfilling the impossible for ordinary humans while gaining nothing yourself.'),
(2, 1, 'Attendant of Mysteries', 'Maintain the boundaries of reality and the spirit world, manipulating hidden concepts while acting as a loyal steward of the cosmos.'),
(2, 0, 'The Fool',               'Blind the world to actual truths by establishing massive, universe-altering conceptual deceptions, ultimately liberating reality from its rigid rules.');



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



