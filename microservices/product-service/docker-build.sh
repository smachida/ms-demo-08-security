#!/bin/bash
docker build -t ms-demo-08-security-product-service .
docker images | grep product-service
