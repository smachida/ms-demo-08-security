#!/bin/bash
docker build -t ms-demo-08-security-product-composite-service .
docker images | grep product-composite-service
