FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG DEPENDENCY=target/gateway
COPY ${DEPENDENCY} /app
ENTRYPOINT ["java","-cp","/app/WEB-INF/lib/*:/app/WEB-INF/classes/.","com.bst.gateway.application.Application"]