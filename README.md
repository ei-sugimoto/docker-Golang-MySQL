# docker-MySQL-Golang     [![My Skills](https://skillicons.dev/icons?i=mysql,go,docker)](https://skillicons.dev)



# OverView
Docker上でMySQLとGolangを使ったDBとAPIサーバの基本的な構築

Basic construction of a database and API server using MySQL and Golang on Docker 👋

# Features

- masterブランチにpull requestもしくはpush時にactionsでDBとのテスト実行 \
  Executing database tests with actions upon pull requests or pushes to the master branch⏩
- 任意のブランチにpushもしくはpull request時にactionsでlint実行\
  Executing linting with actions when pushing to any branch or upon pull requests🔎
# Demo
Access to ```localhost:8080```　\
![image](https://github.com/ei-sugimoto/docker-Golang-MySQL/assets/143775446/3b8d4515-993c-4676-9346-d6cb8ba80083)

Access to ```localhost:8080/users```　\
![image](https://github.com/ei-sugimoto/docker-Golang-MySQL/assets/143775446/e48ee75c-fb62-40fd-b770-3d2d13f7e96d)


# Dev  Environment
- Mac Book Air M1
  * docker for Mac
  * docker 24.0.7
- Windows 10 home
  * docker Desktop
  * docker  24.0.6

# Installation
- plz Fork 🍽️\
![image](https://github.com/ei-sugimoto/docker-Golang-MySQL/assets/143775446/9991cf47-db36-4548-80bd-b8595e97ef35)

# Usage

```bash
docker compose up -d --build
or
docker.exe compose up -d --build #windows
```

## Licence

[MIT]

