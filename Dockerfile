# ============================================
# ÉTAPE 1 : Construction avec Maven
# ============================================
FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean package -DskipTests

# ============================================
# ÉTAPE 2 : Exécution avec Tomcat
# ============================================
FROM tomcat:10.1.34-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

# Copier le WAR directement (Tomcat le décompresse automatiquement)
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Pas besoin de unzip, Tomcat s'en occupe !

EXPOSE 8080

CMD ["catalina.sh", "run"]