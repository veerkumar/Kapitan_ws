#!/bin/bash -eu

DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target dev"
echo ${DIR}
docker run --name docker-nginx-dev -p  8080:80 -it -v $(pwd)/compiled/dev/manifests/html:/usr/share/nginx/html -v $(pwd)/compiled/${kapitan:vars:target}/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx
