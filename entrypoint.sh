WORLD="${WORLD:-world}"
SLOTS="${SLOTS:-10}"
OWNER="${OWNER:-}"
MOTD="${MOTD:-Welcome to the server}"
PASSWORD="${PASSWORD:-}"
PAUSE="${PAUSE:-0}"
GIVECLIENTSPOWER="${GIVECLIENTSPOWER:-1}"
LOGGING="${LOGGING:-1}"
ZIP="${ZIP:-1}"

# Pull down latest server via steamcmd
steamcmd +force_install_dir /necesse_server +login anonymous +app_update 1169370 validate +quit

# Using the java executable bundled with the above server install
/necesse_server/jre/bin/java -jar /necesse_server/Server.jar -nogui -localdir -world "${WORLD}" -slots "${SLOTS}" -owner "${OWNER}" -motd "${MOTD}" -password "${PASSWORD}" -pausewhenempty "${PAUSE}" -giveclientspower "${GIVECLIENTSPOWER}" -logging "${LOGGING}" -zipsaves "${ZIP}"
