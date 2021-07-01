FROM maven:3.3.9-jdk-8
WORKDIR /work/
RUN git clone --depth 1 --branch v7.6.0 https://github.com/usnistgov/iheos-toolkit2.git
WORKDIR /work/iheos-toolkit2/
RUN mvn clean install
RUN echo kuk
RUN pwd
RUN find -name *.war

FROM tomcat:8.5.68-jdk8-openjdk
COPY --from=0 /work/iheos-toolkit2/xdstools2/target/xdstools2-7.6.0.war /usr/local/tomcat/webapps/xdstools2.war
RUN mkdir -p /home/bill/ec
