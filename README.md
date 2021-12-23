# Railsで複数ワードでAND検索やOR検索を実装する

[こちらの記事のサンプル](https://toji.tech/rails%e3%81%a7%e8%a4%87%e6%95%b0%e3%83%af%e3%83%bc%e3%83%89%e3%81%a7and%e6%a4%9c%e7%b4%a2%e3%82%84or%e6%a4%9c%e7%b4%a2%e3%82%92%e5%ae%9f%e8%a3%85%e3%81%99%e3%82%8b/) です。

Dockerを使用してサンプルを作成しています。  
Dockerを使用しない場合は、appフォルダ以下で、コマンドを実行してください。

## Dockerでの起動
初回起動時は、`docker-compose up`後にデータベース/テーブル作成を先に実施して`docker-compose`を再起動してください。
```bash
docker-compose up
```

* データベース作成
```bash
docker-compose run --rm app rails db:create
```

* テーブル作成
```bash
docker-compose run --rm app rails db:migrate
```

## Bundle Install
```bash
docker-compose run --rm app bundle install
```

### Gemの確認
ruby gem、gemsとしてVolumeに保持されます。

以下でVolume内のGemを確認可能
```bash
docker-compose run --rm app ls /usr/local/bundle/gems
```

## node_modules
```bash
# package.json install
docker-compose run --rm app yarn install

# Add package
docker-compose run --rm app yarn add package_name

# Remove package
docker-compose run --rm app yarn remove package_name
```
