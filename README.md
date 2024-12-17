# Spring Boot, Docker, PostgreSQL sample project

Project used to test Spring MVC, some Docker commands, and a tiny dash of PostgreSQL.

## How to run

### What you need installed

* Docker
* Your favorite flavor of JDK 21 (I like Amazon Corretto)
* Maven (You can use another package manager like Gradle if you'd like)

## Cmds to run

Package your project with maven:

```bash
mvn -U clean package
```

Run the docker compose to pull, build, and start your containers.
```bash
docker compose up
```

Go to http://localhost:8080/1 to see that a value was pulled from your PostgreSQL database.