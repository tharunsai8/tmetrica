FROM tomcat:8.5.98-jdk8
COPY target/*.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
