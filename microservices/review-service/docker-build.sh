#!/bin/bash
docker build -t ms-demo-08-security-review-service .
docker images | grep review-service
