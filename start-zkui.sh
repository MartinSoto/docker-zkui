#!/bin/sh

if [ -z "$ZKHOSTS" ]; then
    ZKHOSTS=zookeeper:2181
fi

cd /zkui
sed "s/__ZKHOSTS__/$ZKHOSTS/" /config.cfg.template > ./config.cfg

exec java -jar zkui-2.0-SNAPSHOT-jar-with-dependencies.jar
