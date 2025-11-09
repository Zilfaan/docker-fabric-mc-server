FROM eclipse-temurin:21-jre

WORKDIR /data
VOLUME ["/data"]

RUN apt-get update && apt-get install -y wget

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 25565

ENTRYPOINT ["/start.sh"]
