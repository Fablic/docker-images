## 実行するまで

### 前提

fril-search リポジトリをセットする必要があります。

※ makeコマンドが少し壊れてるみたいなので、`toyonaga-20201215` ブランチを使ってみてください。

```
cd ${dir}/src
git clone git@github.com:Fablic/fril-search.git
```

下記が設定されてる必要があります。
Github の OAuthトークン

```
echo $BUNDLE_GITHUB__COM
```

また、MySQL が起動している必要があります。

例)
コンテナからホストOSのMySQLコンテナにつなぐ

docker for Macだとこのホスト使います。

```
host.docker.internal
```

### ビルド -> 実行

```
$ docker-compose build
$ docker-compose up
```

### アクセス

```
http://localhost:9001/
```

## ボツ

イメージ作成

docker build -t toyonaga/fril-search .

接続
docker run -it toyonaga/fril-search bash


TODO: volumeの指定が絶対パスしかダメっぽいので、docker-composeにする

例)

docker run -it -v ~/working/docker-images/fril-search/src/fril-search:/usr/src/fril-search toyonaga/fril-search bash

---


