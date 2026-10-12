FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/classes ./classes
CMD ["java", "-cp", "classes", "com.example.App"]
