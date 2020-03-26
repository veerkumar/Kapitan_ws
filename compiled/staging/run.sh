#!/bin/bash -eu

DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target staging"
echo ${DIR}
docker run --name docker-nginx-staging -p  9001:80 -it -v $(pwd)/compiled/staging/manifests/html:/usr/share/nginx/html -v $(pwd)/compiled/${kapitan:vars:target}/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx
