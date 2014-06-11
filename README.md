Dockerized RAML API Notebook Server for WebPT
----------------------------------------

Setting up the Server
=========================

After pulling down the repo:

1. `docker build -t apinotebook .` or `make build-image`
2. `docker run -it -p 3000:3000 apinotebook /bin/bash` or `make run-container`
3. `cd /usr/local/api-notebook`
4. `grunt`
8. Press `CTRL+P` then `CTRL+Q` to detach from running docker
9. Connect via port 3000 in a browser