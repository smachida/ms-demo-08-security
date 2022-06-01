#!/bin/bash
docker build -t ms-demo-08-security-authorization-server .
docker images | grep authorization-server
