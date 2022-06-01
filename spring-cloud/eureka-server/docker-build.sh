#!/bin/bash
docker build -t ms-demo-08-security-eureka-server .
docker images | grep eureka-server
