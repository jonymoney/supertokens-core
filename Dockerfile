FROM openjdk:17

WORKDIR /app

COPY . .

RUN ./gradlew build -x test

CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "./core/build/libs/supertokens.jar"]