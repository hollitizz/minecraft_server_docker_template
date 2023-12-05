FROM azul/zulu-openjdk:17.0.0-jre-headless

EXPOSE 25565
WORKDIR /minecraft

RUN apt update && apt install -y wget

RUN wget https://piston-data.mojang.com/v1/objects/4fb536bfd4a83d61cdbaf684b8d311e66e7d4c49/server.jar

WORKDIR /minecraft/data

CMD java -Xmx1024M -Xms1024M -jar /minecraft/server.jar nogui