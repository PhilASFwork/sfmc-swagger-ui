#!/bin/bash

docker build ./main -t philasfwork/sfmc-swagger-ui
docker images
heroku container:login
heroku container:push web -a sfmc-travis-tests