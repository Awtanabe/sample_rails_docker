# README

## Setup

### Setup

プロジェクト作成

```
docker-compose run web rails new . --force --database=postgresql
```

bundle installされたから再度ビルド

```
docker-compose build
```

database.yml書き換え

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password  <=  composeに書いてるから
  pool: 5
```

DB作成

```
docker-compose run app rake db:create
docker-compose run app rake db:migrate
```

アクセス

```
docker-compose up
```
