FROM tomcat:10.1-jdk17

# Xóa app mặc định của Tomcat (ROOT)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR build từ Maven sang Tomcat
COPY target/EmailList23133055-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
