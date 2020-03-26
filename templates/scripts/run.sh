#!/bin/bash -eu

{% set i = inventory.parameters %}
DIR=$(dirname ${BASH_SOURCE[0]})

echo "Running for target {{ i.target_name }}"
echo ${DIR}
docker run --name docker-nginx-{{i.target_name}} -p  {{i.nginx.ports.container_port}}:{{i.nginx.ports.host_port}} -it -v {{i.nginx.location.root}}:{{i.nginx.location.default}} -v $(pwd)/compiled/${kapitan:vars:target}/manifests/nginx.conf:/etc/nginx/conf.d/default.conf nginx

