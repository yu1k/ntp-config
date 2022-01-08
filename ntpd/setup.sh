#!/bin/bash

set -ex

# 引数はIPアドレスとサブネットの2個を指定する、それ以外が指定された場合は標準エラー出力を echo して exit 1 する
if [ $# != 2 ]; then
  echo "指定された引数は " + $# + " 個です。" 1>&2
  echo "このスクリプトを実行するには2個の引数が必要です。" 1>&2
	exit 1
fi

ipaddr=$1
subnet=$2

echo "接続許可範囲に "
echo "IPアドレス: " + $ipaddr
echo "サブネットマスク: " + $subnet
echo "を /etc/ntp.conf に設定しました"

sed -i -e "52i restrict $ipaddr mask $subnet nomodify notrap" ./ntp.conf

echo "接続許可範囲の設定が完了しました。NTPdを再起動します"

systemctl restart ntp

echo "done..."
