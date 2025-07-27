FROM tomcat:9-jdk17

# Set environment variables
ENV CYCLOS_VERSION 4.16.16

# Download and extract Cyclos WAR file
RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://sourceforge.net/projects/cyclos/files/Cyclos4pro/v$CYCLOS_VERSION/cyclos-$CYCLOS_VERSION.war -O /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
