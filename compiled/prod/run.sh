#!/bin/bash -eu

DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target prod"
echo ${DIR}
docker run --name docker-nginx-prod -p  32232:80 -it -v $(pwd)/compiled/prod/manifests/html:/usr/share/nginx/html -v $(pwd)/compiled/${kapitan:vars:target}/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx
