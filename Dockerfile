FROM maven:3-jdk-8 as maven
RUN git clone https://github.com/pranganathp/game-of-life.git && cd game-of-life && mvn package

FROM tomcat:8
LABEL author='Ranganath'
COPY --from=maven /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
