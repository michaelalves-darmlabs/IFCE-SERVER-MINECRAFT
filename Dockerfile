FROM openjdk:17-jdk-slim

WORKDIR /ifce-minecraft-server

COPY . .

# Expõe a porta 25565 TCP (Minecraft Server)
EXPOSE 25565/tcp

# Expõe a porta 24454 UDP (personalizada, por exemplo, para plugins específicos)
EXPOSE 24454/udp

# Comando para iniciar o servidor Minecraft
CMD ["java", "-Xmx8G", "-jar", "server.jar", "nogui"]
