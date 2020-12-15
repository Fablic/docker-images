## 作成中

イメージ作成

docker build -t toyonaga/fril-search .

接続
docker run -it toyonaga/fril-search bash


TODO: volumeの指定が絶対パスしかダメっぽいので、docker-composeにする

例)

docker run -it -v ~/working/docker-images/fril-search/src/fril-search:/usr/src/fril-search toyonaga/fril-search bash

---

```
$ docker-compose build
$ docker-compose up
```

