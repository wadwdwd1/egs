git clone https://gitlab.com/potato1234/mc-2/
echo starting...
cd mc-2
cd bungee

MTOD="${MTOD:-'WADMC.SITE RULES!!!'}"

sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

cd plugins
cd EaglercraftXBungee

sed -i 's/${MTOD}/'"$MTOD"'/g' listeners.yml

cd /
cd bungee

java -Xmx1024M -Xms1024M -jar bungee.jar
