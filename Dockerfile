FROM eclipse-temurin:17.0.14_7-jdk-ubi9-minimal
    
EXPOSE 8080
 
ENV APP_HOME=/usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
