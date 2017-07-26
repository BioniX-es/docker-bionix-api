FROM java:8
VOLUME /tmp
ADD build/api.jar api.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/api.jar"]
