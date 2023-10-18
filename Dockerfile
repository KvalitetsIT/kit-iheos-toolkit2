# 2 trin er noedvendigt for at wget virker, maven er brugt som image, for tilfaeldet at man vil bygge war filen selv paa et senere tidspunkt.
FROM maven:3.3.9-jdk-8
WORKDIR /work/
RUN wget https://github.com/usnistgov/iheos-toolkit2/releases/download/v7.10.0-fixed/xdstools7.10.0.war

FROM tomcat:8.5.68-jdk8-openjdk
WORKDIR /work/
COPY --from=0 /work/xdstools7.10.0.war /usr/local/tomcat/webapps/xdstools2.war
