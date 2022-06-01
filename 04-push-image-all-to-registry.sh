#!/bin/bash

HARBOR_HOST=172.16.140.11

echo "pushing the images to the registry: $HARBOR_HOST"
docker login $HARBOR_HOST

docker tag ms-demo-08-security-product-service $HARBOR_HOST/ms-demo/ms-demo-08-security-product-service
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-product-service
docker tag ms-demo-08-security-recommendation-service $HARBOR_HOST/ms-demo/ms-demo-08-security-recommendation-service
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-recommendation-service
docker tag ms-demo-08-security-review-service $HARBOR_HOST/ms-demo/ms-demo-08-security-review-service
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-review-service
docker tag ms-demo-08-security-product-composite-service $HARBOR_HOST/ms-demo/ms-demo-08-security-product-composite-service
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-product-composite-service
docker tag ms-demo-08-security-eureka-server $HARBOR_HOST/ms-demo/ms-demo-08-security-eureka-server
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-eureka-server
docker tag ms-demo-08-security-gateway $HARBOR_HOST/ms-demo/ms-demo-08-security-gateway
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-gateway
docker tag ms-demo-08-security-authorization-server $HARBOR_HOST/ms-demo/ms-demo-08-security-authorization-server
docker push $HARBOR_HOST/ms-demo/ms-demo-08-security-authorization-server