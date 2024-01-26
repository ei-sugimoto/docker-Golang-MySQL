# docker-MySQL-Golang     [![My Skills](https://skillicons.dev/icons?i=mysql,go,docker)](https://skillicons.dev)

Docker上でMySQLとGolangを使ったDBとAPIサーバの基本的な構築

Basic construction of a database and API server using MySQL and Golang on Docker 👋

# Features

- masterブランチにpull requestもしくはpush時にactionsでDBとのテスト実行 \
  Executing database tests with actions upon pull requests or pushes to the master branch⏩
- 任意のブランチにpushもしくはpull request時にactionsでlint実行\
  Executing linting with actions when pushing to any branch or upon pull requests🔎

# Requirement
* At least docker 24.0.7
# Installation
```bash
git clone git@github.com:ei-sugimoto/GistsBoard.git
```

# Usage

```bash
docker compose up -d --build
```
Access to ```localhost:8080```
