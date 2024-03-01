FROM openjdk:8-jdk-alpine 
WORKDIR /usr/app
COPY ./ ./
ENTRYPOINT java -jar target/*.jar
CMD [ "bash", "./wait-for-it.sh", "-h", "postgres:5432"]