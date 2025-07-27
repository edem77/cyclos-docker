FROM tomcat:9-jdk11

ENV CYCLOS_VERSION=4.16.16
ENV GDRIVE_FILE_ID=1MWR6SAP2bg0vIC3avJVB5xcAVh2BpUJX

RUN apt-get update && \
    apt-get install -y wget unzip python3-pip && \
    pip3 install gdown && \
    gdown https://drive.google.com/uc?id=$GDRIVE_FILE_ID -O /usr/local/tomcat/webapps/ROOT.war
