# OrtodoxMD Server

## Descriere Proiect
Acest repo conține backend-ul pentru aplicația OrtodoxMD, o platformă dedicată conținutului ortodox pentru Mitropolia Moldovei. Server-ul este construit cu Spring Boot folosind o arhitectură microservicii (core-service pentru date text și media-service pentru conținut audio/video). Oferă API-uri REST publice (fără autentificare) pentru fetch de date, streaming și download, cu suport pentru updates dinamice. Datele sunt stocate în PostgreSQL, cu migrări via Flyway. Proiectul este open-source sub licență GPL v3 și poate fi deploy-at pe Heroku sau VPS pentru producție.

Scop: Furnizează conținut centralizat (ex: calendar ortodox, rugăciuni, cărți audio) pentru clientul Android, cu focus pe scalabilitate și modularitate.

Referințe cheie:
- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [PostgreSQL Setup on Arch Linux](https://wiki.archlinux.org/title/PostgreSQL)

## Setup Inițial
1. Clonează repo-ul: `git clone https://github.com/yourusername/ortodoxmd-server.git`
2. Instalează PostgreSQL: `sudo pacman -S postgresql && sudo systemctl enable --now postgresql`
3. Creează DB: `psql -U postgres -c "CREATE DATABASE ortodoxmd_db;"` și schemas (core_schema, media_schema).
4. Deschide în IntelliJ IDEA Community.
5. Rulează: `mvn clean install`, apoi rulează serviciile separat sau cu `docker-compose up`.
6. Test: Accesează Swagger la http://localhost:8080/swagger-ui.html (core) și http://localhost:8081/swagger-ui.html (media).

Dependințe: Java 17, Maven, Docker (opțional).

## Checklist Features (Server-Side)
- [x] **Core-Service: Calendar Ortodox** - API pentru listă sărbători, fetch după dată (JSON).
- [X] **Core-Service: Rugăciuni Ortodoxe** - API pentru categorii și text rugăciuni.
- [X] **Core-Service: Biblie** - API pentru capitole/versete structurate (Vechi/Nou Testament).
- [X] **Core-Service: Vieți Sfinți** - API pentru biografii și imagini metadata.
- [X] **Core-Service: Informații Icoane** - API pentru descrieri și imagini.
- [X] **Core-Service: Slujbe Bisericești** - API pentru detalii slujbe.
- [X] **Core-Service: Hartă Interactivă** - API pentru locații lăcașuri (JSON cu coordonate).
- [X] **Media-Service: Radio Online** - API pentru streaming posturi radio (URL-uri).(Implementat complet pe partea Android)
- [X] **Media-Service: Cărți Audio/Electronice** - API pentru streaming/download audio/text, metadata.
- [X] **Comun: Integrări Inter-Servicii** - Calls via Feign între core și media.
- [X] **Comun: Suport Offline (Download)** - Endpoints pentru bulk download.(complet pe partea de server)(partial implementat pe partea Android)
- [ ] **Comun: Deploy Producție** - Configurații pentru Heroku/Render, HTTPS.
- [ ] **Comun: Testing și CI** - JUnit tests, GitHub Actions pentru build.

Progresul va fi iterativ: Implementare API, testare cu Postman/Swagger, apoi integrare cu Android client.
