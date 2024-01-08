FROM openjdk:17
RUN apk add curl
VOLUME /tmp
EXPOSE 8086
ADD target/helloworld.jar helloworld.jar
ENTRYPOINT ["java","-jar","/helloworld.jar"]