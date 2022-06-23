#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20210908.sql ./mysql/db
cp ../sql/ry_config_20220114.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../services-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy services-gateway "
cp ../services-gateway/target/services-gateway.jar ./services/gateway/jar

echo "begin copy services-auth "
cp ../services-auth/target/services-auth.jar ./services/auth/jar

echo "begin copy services-visual "
cp ../services-visual/services-monitor/target/services-visual-monitor.jar  ./services/visual/monitor/jar

echo "begin copy services-modules-system "
cp ../services-modules/services-system/target/services-modules-system.jar ./services/modules/system/jar

echo "begin copy services-modules-file "
cp ../services-modules/services-file/target/services-modules-file.jar ./services/modules/file/jar

echo "begin copy services-modules-job "
cp ../services-modules/services-job/target/services-modules-job.jar ./services/modules/job/jar

echo "begin copy services-modules-gen "
cp ../services-modules/services-gen/target/services-modules-gen.jar ./services/modules/gen/jar

