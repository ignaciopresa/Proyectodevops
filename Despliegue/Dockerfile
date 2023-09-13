# Dockerfile para combinar backend, frontend, Git y Jenkins
FROM ubuntu:20.04

# Etapa 1: Instalar paquetes esenciales y Git
RUN apt-get update && apt-get install -y git

# Etapa 2: Instalar Jenkins
RUN apt-get update && apt-get install -y curl gnupg

# Importar la clave GPG de Jenkins
RUN curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | gpg --dearmor -o /usr/share/keyrings/jenkins-archive-keyring.gpg

# Configurar el repositorio de Jenkins
RUN echo "deb [signed-by=/usr/share/keyrings/jenkins-archive-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Actualizar nuevamente y luego instalar Jenkins
RUN apt-get update && apt-get install -y jenkins

# Etapa 3: Copiar la aplicación Spring Boot desde el directorio actual
WORKDIR /app
COPY care-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080

# Etapa 4: Comando para ejecutar la aplicación Spring Boot
CMD ["java", "-jar", "app.jar"]

# Exponer el puerto de Jenkins
EXPOSE 8081

# Comando para iniciar Jenkins
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
