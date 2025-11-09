# Fabric Minecraft Server (Docker)

This repository allows you to run a Fabric Minecraft server inside Docker.
Everything (worlds, mods, configs) is stored in a persistent data/ folder so you can update Minecraft, change RAM, or Fabric versions without rebuilding the image.

## Setting up and running the project

### 1. Create a .env file

Create a .env file in the project root to configure your server. Example:

```ini
# Minecraft version
MC_VERSION=1.21.10

# Fabric Loader version
FABRIC_LOADER=0.17.3

# Installer version
INSTALLER_VERSION=1.1.0

# Allocated RAM for the server
RAM=4G
```

Notes:

- No quotes around values.
- Make sure the file uses LF line endings (Linux style) to avoid corrupt downloads on Windows.
- These variables control the download URL, memory allocation, and server version.

### 2. Install docker

This goes without saying, but please ensure that [Docker](https://www.docker.com/) is installed

### 3. Build and Run

```bash
# Build Docker image
docker compose build

# Start server in detached mode
docker compose up -d
```

### 4. Adding mods/changing configs

All the usual fabric server files can be found in the ./data directory which gets creating after running the docker image

## 📂 Folder Structure

```bash
mc-server/
│
├─ Dockerfile
├─ docker-compose.yml
├─ start.sh
├─ .env        <-- user-created config
└─ data/       <-- persistent server data (worlds, configs, mods)
```

Last updated 09/11/2025
