#!/bin/bash

set -x

docker rmi -f sanagama/sfmc-swagger-ui
docker rmi -f registry.heroku.com/sfmc-swagger-ui/web

docker build . -t sanagama/sfmc-swagger-ui
docker images

#
# Test locally with the command below:
# docker run -p 8080:8080 sanagama/sfmc-swagger-ui
#

#
# Publish to Dockerhub with the command below:
# docker push sanagama/sfmc-swagger-ui
#

#
# Publish to Heroku with the commands below:
#
# heroku login
# heroku container:login
#
# docker tag sanagama/sfmc-swagger-ui registry.heroku.com/sfmc-swagger-ui/web
# docker push registry.heroku.com/sfmc-swagger-ui/web
#
