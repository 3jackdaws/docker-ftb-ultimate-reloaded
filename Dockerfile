FROM openjdk:8-jre-slim

RUN mkdir /ftb

RUN apt-get update && apt-get install -y wget unzip screen

RUN wget -q -O pack.zip https://media.forgecdn.net/files/2778/970/FTBUltimateReloadedServer_1.9.0.zip

ADD docker-entrypoint.sh .
ENTRYPOINT bash docker-entrypoint.sh

