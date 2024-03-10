# Datadog Sandbox
Datadogをガシガシ触っていくためのアプリ

# 環境構築
## 動作環境
- Ruby 3.2.X
- rails 7.1.X

## Setup
事前にruby, mysql, nodeの設定が完了していることが前提です
リポジトリのクローン後以下の手順に従ってください

### 1.パッケージのインストール
```
bundle
yarn
```

### 2.DBの作成
```
bundle exec rails db:create db:migrate
```

### 3.Datadogアカウントの作成とDatadog Agentのセットアップ

## 各種お役立ちコマンド
schema grapqlのdump
```
rake graphql:schema:dump
```