#!/bin/bash
docker build -t ms-demo-08-security-recommendation-service .
docker images | grep recommendation-service
