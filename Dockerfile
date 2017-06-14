FROM openjdk:8-alpine

EXPOSE 9999

ENV WIREMOCK_VERSION 2.5.1

RUN apk update && \
    apk --no-cache upgrade

RUN mkdir /opt/stub-demo -p \
    && cd /opt/stub-demo \
    && wget http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/$WIREMOCK_VERSION/wiremock-standalone-$WIREMOCK_VERSION.jar

COPY mappings/ /opt/stub-demo/mappings
COPY resources/ /opt/stub-demo/resources

WORKDIR /opt/stub-demo

CMD java -jar wiremock-standalone-$WIREMOCK_VERSION.jar --port 9999
