FROM maven:3-jdk-8 as build
RUN git clone https://github.com/Ranganath-Github/game-of-life.git
RUN cd /game-of-life
WORKDIR /game-of-life
RUN mvn package

FROM tomcat:8
LABEL owner=none
EXPOSE 8080
COPY --from=build /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
CMD ["catalina.sh", "run"]
