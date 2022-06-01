#!/bin/bash

echo "Building gateway image ..."
cd spring-cloud/gateway
./docker-build.sh

echo "Building authorization-server image ..."
cd ../authorization-server
./docker-build.sh

echo " ---- image build done. --- "
docker images | grep ms-demo-08-security
