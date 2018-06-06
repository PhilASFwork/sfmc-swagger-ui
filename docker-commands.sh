#!/bin/bash

echo "Ready to build"
docker build ./main -t philasfwork/sfmc-swagger-ui

echo "image Built"
docker images

# This is where 'heroku login' was called in the original script. I think this is the issue.

echo "Trying login"
heroku container:login
echo "logged in"

echo "making Docker Tag"
docker tag philasfwork/sfmc-swagger-ui registry.heroku.com/sfmc-swagger-ui/web

echo "docker pushing to Registry"
docker push registry.heroku.com/sfmc-swagger-ui/web
echo "Image Pushed"

echo "Heroku pushing Image"
heroku container:push web -a sfmc-travis-tests

echo "Image pushed (published?)"