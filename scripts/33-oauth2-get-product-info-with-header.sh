#!/bin/bash
curl https://localhost:8443/product-composite/1001 -k -H "Authorization: Bearer $ACCESS_TOKEN" -i
