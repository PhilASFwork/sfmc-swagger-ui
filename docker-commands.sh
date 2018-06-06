#!/bin/bash

echo "Ready to build"
docker build ./main -t philasfwork/sfmc-swagger-ui

echo "image Built"
docker images

# This is where 'heroku login' was called in the original script. I think this is the issue.

echo "Trying login"
heroku container:login

echo "logged in; trying web push"
heroku container:push web -a sfmc-travis-tests

echo "Image pushed."