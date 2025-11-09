#!/bin/sh

# Load env vars
if [ -f /data/.env ]; then
  export $(grep -v '^#' /data/.env | xargs)
fi

LAUNCHER_URL="https://meta.fabricmc.net/v2/versions/loader/${MC_VERSION}/${FABRIC_LOADER}/${INSTALLER_VERSION}/server/jar"

# Download Fabric server launcher if missing
if [ ! -f fabric-server-launcher.jar ]; then
  echo "Downloading Fabric server launcher..."
  wget "$LAUNCHER_URL" -O fabric-server-launcher.jar
fi

# Accept EULA if it does not exist
if [ ! -f eula.txt ]; then
  echo "eula=true" > eula.txt
fi

# Start the server
echo "Starting Fabric server with ${RAM} RAM..."
java -Xmx${RAM} -jar fabric-server-launcher.jar nogui
