FROM tomcat:10.1-jdk17

COPY target/MavenWebProject-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
