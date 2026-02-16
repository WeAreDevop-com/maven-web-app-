FROM tomcat:9.0-jdk17-temurin
# Dummy text to test 
# testing Github webhook is working
# automation
COPY target/*.war /usr/local/tomcat/webapps/maven-web-app.war
