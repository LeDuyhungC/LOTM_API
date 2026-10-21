# 🔮 Lord of the Mysteries (LOTM) REST API

A RESTful API and relational database for the universe of ***Lord of the Mysteries* (诡秘之主)** by Cuttlefish That Loves Diving. (INCOMPLETE)

Built with **Node.js**, **Express**, **TypeScript**, and **PostgreSQL**, this API is designed with a **chapter-range spoiler protection system** that allows reader companion apps, wikis, and fan projects to query character statuses, faction loyalties, and Beyonder progressions safely at any point in the 1,432-chapter web novel.

---

## 🌟 Key Features

* **🛡️ Spoiler-Proof Reader Profile (`/reader-profile?chapter=N`)**:
  Query a character's current sequence, alias, faction membership, and alive/dead status filtered dynamically up to a specific chapter number. Never spoil a future promotion or death!
* **📈 Beyonder Sequence Progression Timelines (`/timeline`)**:
  Retrieve exact chapter-by-chapter promotion milestones and life events for characters across the 10 sequences.
* **⚡ 22 Pathways & Neighboring Cosmogony (`/neighboring`, `/sequences`)**:
  Explore all 22 standard pathways from Sequence 9 to Sequence 0, including neighboring pathways interchangeable at high sequences (e.g., Sefirah Castle grouping *Fool*, *Door*, and *Error*).
* **🧪 Potion Formulas & Recipes (`/recipes`)**:
  Retrieve complete potion formulas, including supplementary ingredients, main ingredients, and advancement rituals.
* **🧿 Sealed Artifacts & Powers (`/artifacts`, `/abilities`)**:
  Access details on Grade 0 to Grade 3 Sealed Artifacts, their granted mystical abilities, psychological side effects/penalties, and historical wielders.
* **🏛️ Faction Rosters (`/factions/:id/members`)**:
  Query organizations such as the Tarot Club, Nighthawks, City of Silver, Aurora Order, and MI9 with chapter-bounded membership ranges.
* **📖 Interactive API Documentation (`/api-doc`)**:
  Fully documented OpenAPI 3.0 specification rendered via modern Scalar UI right inside the browser.

---

## 🛠️ Tech Stack & Architecture

| Layer | Technology | Description |
| :--- | :--- | :--- |
| **Runtime** | [Node.js](https://nodejs.org/) (v20+ LTS) | JavaScript runtime environment |
| **Language** | [TypeScript](https://www.typescriptlang.org/) (Strict Mode) | Strong typing and safe data contracts |
| **Framework** | [Express.js](https://expressjs.com/) | Lightweight, functional routing and middleware |
| **Database** | [PostgreSQL 17](https://www.postgresql.org/) | Relational database containerized via Docker |
| **DB Driver** | [`pg` (node-postgres)](https://node-postgres.com/) | High-throughput connection pooling |
| **Security** | [Helmet](https://helmetjs.github.io/) & [express-rate-limit](https://express-rate-limit.mintlify.app/) | Secure HTTP headers and DDoS/brute-force rate limiting |
| **API Docs** | [OpenAPI 3.0](https://swagger.io/specification/) & [Scalar](https://scalar.com/) | Interactive documentation interface at `/api-doc` |
| **Testing** | [Jest](https://jestjs.io/) & [Supertest](https://github.com/ladjs/supertest) | Automated integration testing |
| **DevOps** | [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/) | Multi-stage production builds ready for AWS EC2 |

### Functional Architecture
The backend avoids heavyweight OOP class boilerplate in favor of pure, composable module functions:
```
src/
├── app.ts                  # Express application setup & middleware stack
├── db/
│   └── index.ts            # PostgreSQL connection pool with auto-reconnect
├── routes/
│   └── v1/                 # Versioned route definitions
│       ├── characters.ts
│       ├── pathways.ts
│       ├── sequences.ts
│       ├── artifacts.ts
│       └── factions.ts
└── controllers/            # Async controller functions handling SQL queries
    ├── characters/
    ├── pathways/
    ├── sequences/
    ├── artifacts/
    └── factions/
```

---

## 🧠 Spoiler Protection: How It Works

Traditional wikis spoil major plot twists because they show end-of-series states. LOTM_API solves this through relational **chapter-range tables**:

```
[chapters] ───< [char_seq_chapter_range] >─── [sequences]

                  [characters]

[chapters] ───< [char_fac_chapter_range] >─── [factions]
```

Every promotion, faction alliance, or artifact transfer records:
- `chapter_start_id`: First chapter where this state is canonical.
- `chapter_end_id`: Chapter where the state ends (or `NULL` if ongoing).
- `death_chapter_id`: The chapter where a character dies (e.g., Dunn Smith at Ch 211).

When querying `GET /v1/characters/1/reader-profile?chapter=200`:
- **Klein Moretti** is displayed as **Sequence 8 Clown** (became Clown at Ch 165; hasn't reached Magician at Ch 314).
- **Dunn Smith** is displayed as **Status: Alive** (dies at Ch 211).
When querying the same endpoint with `?chapter=300`:
- **Klein** is now **Sequence 7 Magician**.
- **Dunn Smith** is displayed as **Status: Deceased (Died at chapter 211)**.

---

## 📡 API Endpoints Overview

Base URL: `http://localhost:3000/v1`

### Characters
| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/characters` | List all characters (pagination supported) |
| `GET` | `/characters/:id` | Get character profile by ID |
| `GET` | `/characters/:id/reader-profile?chapter=N` | **Spoiler-filtered** status at chapter `N` |
| `GET` | `/characters/:id/timeline` | Full sequence advancement history |
| `GET` | `/characters/:id/origin` | Birthplace and origin details |

### Pathways & Sequences
| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/pathways` | List all 22 Divine Pathways |
| `GET` | `/pathways/:id` | Pathway details |
| `GET` | `/pathways/:id/sequences` | All 10 sequences from Seq 9 to Seq 0 |
| `GET` | `/pathways/:id/neighboring` | Interchangeable pathways sharing a Sefirah |
| `GET` | `/sequences/:id` | Sequence details |
| `GET` | `/sequences/:id/recipe` | Potion formula, main & supplementary ingredients |

### Sealed Artifacts & Factions
| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/artifacts` | List sealed artifacts |
| `GET` | `/artifacts/:id/abilities` | Granted mystical powers, negative penalties, and bearers |
| `GET` | `/factions` | List all factions/churches/secret orders |
| `GET` | `/factions/:id/members` | Faction roster with start/end chapter ranges |

### Documentation & Health
| Method | Endpoint | Description |
| :--- | :--- | :--- |
| `GET` | `/status` | Server health check |
| `GET` | `/api-doc` | Interactive Scalar OpenAPI web documentation |

---

## 🚀 Getting Started (Local Development)

### Prerequisites
* [Node.js](https://nodejs.org/) (v20+ recommended)
* [Docker](https://www.docker.com/) & [Docker Compose](https://docs.docker.com/compose/)

### 1. Clone the Repository
```bash
git clone https://github.com/LeDuyhungC/LOTM_API.git
cd LOTM_API
```

### 2. Configure Environment Variables
Copy the example environment file:
```bash
cp .env.example .env
```
*(On Windows PowerShell: `Copy-Item .env.example .env`)*

Default local `.env` configuration:
```env
PORT=3000
NODE_ENV=development
DB_USER=postgres
DB_PASSWORD=admin
DB_HOST=localhost
DB_PORT=5433
DB_NAME=lotm
```

### 3. Start Database in Docker
```bash
docker compose up -d
```
This spins up:
- **`lotm_db`**: PostgreSQL 17 on host port `5433` (mapped from container `5432` to avoid clashes with native Postgres).
- **`lotm_pgadmin`**: pgAdmin 4 web interface accessible at `http://localhost:5050`.

The database schema and initial seed data are automatically executed from `Database/LOTM_DB_Schema.sql` and `Database/seed.sql`.

### 4. Install Dependencies & Run
```bash
npm install
npm run dev
```
The server will start at `http://localhost:3000`.

Visit `http://localhost:3000/api-doc` in your browser to explore and test the endpoints interactively!

---

## 🧪 Running Automated Tests

The test suite runs using Jest and Supertest against the live test database to verify route integrity, spoiler protection, and error handling:

```bash
npm test
```

Expected output:
```text
PASS tests/api.test.ts
  LOTM API Integration Tests
    Health & Status Endpoints
      ✓ GET /status should return 200 with service message
      ✓ GET /invalid-route should return 404 with JSON error
    Character Endpoints
      ✓ GET /v1/characters should return a list of characters
      ✓ GET /v1/characters/1 should return Klein / Zhou Mingrui
      ✓ GET /v1/characters/1/reader-profile?chapter=100 should apply spoiler filtering
      ✓ GET /v1/characters/1/timeline should return progression timeline
    Sequence & Potion Recipe Endpoints
      ✓ GET /v1/sequences/1/recipe should return Seer potion ingredients
    Pathway Endpoints
      ✓ GET /v1/pathways/1/neighboring should return Door and Error under Sefirah Castle
      ✓ GET /v1/pathways/1/sequences should return all 10 sequences from Seq 9 to Seq 0
    Artifact Endpoints
      ✓ GET /v1/artifacts/9/abilities should return Creeping Hunger abilities and bearers
    Faction Endpoints
      ✓ GET /v1/factions/1/members should return Tarot Club members

Test Suites: 2 passed, 2 total
Tests:       12 passed, 12 total
```

---

## ☁️ Deployment Guide (AWS EC2)

The project includes a multi-stage production [Dockerfile](Dockerfile) optimized for minimal image size and security.

### 1. Launch an AWS EC2 Instance
* **AMI**: Ubuntu Server 24.04 LTS (HVM)
* **Instance Type**: `t2.micro` or `t3.micro` (AWS Free Tier eligible)
* **Security Group Rules (Inbound)**:
  * `SSH` (Port 22) &rarr; `Your IP`
  * `HTTP` (Port 80) &rarr; `0.0.0.0/0`
  * `Custom TCP` (Port 3000) &rarr; `0.0.0.0/0` (API access)

### 2. Connect and Install Docker
SSH into your instance:
```bash
ssh -i your-key.pem ubuntu@your-ec2-public-ip
```

Update packages and install Docker:
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io docker-compose-v2 git
sudo usermod -aG docker ubuntu
newgrp docker
```

### 3. Clone and Run on EC2
```bash
git clone https://github.com/LeDuyhungC/LOTM_API.git
cd LOTM_API

# Create production .env
cat <<EOF > .env
PORT=3000
NODE_ENV=production
DB_USER=postgres
DB_PASSWORD=your_secure_password_here
DB_HOST=db
DB_PORT=5432
DB_NAME=lotm
EOF
```

### 4. Build and Launch Containers
```bash
docker compose up -d --build
```
Your API will be live at `http://your-ec2-public-ip:3000` with documentation at `http://your-ec2-public-ip:3000/api-doc`.

*(Optional: Set up Nginx as a reverse proxy with Certbot to serve over HTTPS with a custom domain on port 443).*

---

## 📜 Novel Attribution & Disclaimer

*Lord of the Mysteries* (《诡秘之主》) and all associated lore, characters, organizations, sequences, and world-building elements are the intellectual property of **Cuttlefish That Loves Diving (爱潜水的乌贼)** and **Qidian / China Literature (阅文集团)**.

This project is a non-commercial, open-source educational API built for web novel fans and software developers.

---

## 📄 License

This project is licensed under the [ISC License](LICENSE).
