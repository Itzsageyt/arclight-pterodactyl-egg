#!/bin/ash
# Installation script for the Arclight server

PROJECT=arclight
JAR_FILE=${SERVER_JARFILE}
MINECRAFT_VERSION=${MINECRAFT_VERSION:-latest}
BUILD_NUMBER=${BUILD_NUMBER:-latest}

echo "Downloading Arclight version ${MINECRAFT_VERSION} build ${BUILD_NUMBER}"
DOWNLOAD_URL=https://github.com/IzzelAliz/Arclight/releases/download/${MINECRAFT_VERSION}/arclight-${MINECRAFT_VERSION}-${BUILD_NUMBER}.jar

cd /mnt/server

# Download the server jar
curl -o ${JAR_FILE} ${DOWNLOAD_URL}

# Download default server.properties if not exists
if [ ! -f server.properties ]; then
    echo "Downloading server.properties"
    curl -o server.properties https://raw.githubusercontent.com/pterodactyl/panel/develop/resources/scripts/installers/server.properties
fi
