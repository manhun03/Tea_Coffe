# Sử dụng OpenJDK 17
FROM openjdk:17-jdk-slim

# Đặt biến môi trường (nếu muốn override cấu hình Spring Boot)
ENV SPRING_PROFILES_ACTIVE=dev

# Copy file JAR từ target vào container
ARG JAR_FILE=target/CNF_COFFEE-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose cổng 8080
EXPOSE 8080

# Chạy ứng dụng
ENTRYPOINT ["java", "-jar", "/app.jar"]
