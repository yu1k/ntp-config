# NTPd

- 環境
  - OS: Ubuntu20.04
  - シェル: bash
  - user: root

# NTPサーバ 設定方法

```
$ apt install -y ntpd
```

NTPdをインストール

```
$ git clone git@github.com:yu1k/ntp-config.git
$ cd ./ntp-config/ntpd
$ chmod +x setup.sh
$ ./setup.sh [IPv4アドレス] [サブネットマスク]
```

1行目&2行目でローカルにリポジトリをクローンして `./ntp-config/ntpd` ディレクトリに移動する

3行目で設定スクリプトに実行権限を与える

4行目で時刻同期の接続許可範囲のIPv4アドレス，サブネットマスクを引数として指定して設定スクリプトを実行する

## TODO

- VMで直接動かしたくないので、コンテナ化する
