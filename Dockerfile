# Используем официальный образ OpenJDK
FROM openjdk:17-jdk-slim

# Добавляем jar файл приложения в контейнер
COPY target/trenning-1.0-SNAPSHOT.jar app.jar

# Указываем команду для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]

# Открываем порт 8080
EXPOSE 8080
