FROM openjdk:24-slim
EXPOSE 25565 25575
RUN apt-get update && apt-get install -y wget
RUN mkdir /minecraft
WORKDIR /minecraft
COPY server.properties /minecraft
## download minecraft server image
## find server image download link at https://mcversions.net/
### ver 1.21
RUN wget -v "https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar" -O /server.jar
CMD echo eula=true > /minecraft/eula.txt && java -jar /server.jar nogui
