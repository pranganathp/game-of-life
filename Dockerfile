FROM tomcat:8-jre8
LABEL owner=none
EXPOSE 8080
COPY /gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
CMD ["catalina.sh", "run"]
