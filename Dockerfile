FROM tomcat:8
LABEL owner=ranganath
EXPOSE 8080
COPY /gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
CMD ["catalina.sh", "run"]
