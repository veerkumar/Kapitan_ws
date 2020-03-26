# My Readme

Target: staging

# INVENTORY

```
- common
- my_component

```


```
_reclass_:
  environment: base
  name:
    full: staging
    short: staging
kapitan:
  compile:
  - input_paths:
    - templates/docs
    input_type: jinja2
    output_path: .
  - input_paths:
    - templates/nginx.conf
    input_type: jinja2
    output_path: manifests
    output_type: html
  - input_paths:
    - templates/*.html
    input_type: jinja2
    output_path: manifests/html
  - input_paths:
    - templates/scripts/
    input_type: jinja2
    output_path: .
  vars:
    target: staging
nginx:
  charset: koi8-r
  error_404: true
  image: nginx:1:15.8
  location:
    default: /usr/share/nginx/html
    root: $(pwd)/compiled/staging/manifests/html
  ports:
    container_port: 9001
    host_port: 80
  replicas: 2
  server_name: localhost
target_name: staging
your_component:
  some_parameter: true

```