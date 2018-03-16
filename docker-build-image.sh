#!/bin/bash

set -x

# 1. get rid of any existing images
docker rmi -f sanagama/sfmc-swagger-ui
docker rmi -f registry.heroku.com/sfmc-swagger-ui/web

# 2. build the nerw Docker image
docker build . -t sanagama/sfmc-swagger-ui
docker images

#
# 3. Test locally with the command below:
# docker run -p 8080:8080 sanagama/sfmc-swagger-ui
#
# Open a browser and browse to: http://localhost:8080
#

#
# 4. (Optional) Publish to Dockerhub with the command below:
# docker push sanagama/sfmc-swagger-ui
#

#
# 5. Create a new Heroku app (you only need to do this once)
# Head over to heroku.com, sign-in and create a new web app with the GUI OR use the Heroku CLI commands below:
#
# heroku login
# heroku create sfmc-swagger-ui
#

#
# 6. Use the Heroku CLI commands below to push the local Docker image to Heroku:
#
# heroku login
# heroku container:login
#
# docker tag sanagama/sfmc-swagger-ui registry.heroku.com/sfmc-swagger-ui/web
# docker push registry.heroku.com/sfmc-swagger-ui/web
#
# Open a browser and browse to: https://sfmc-swagger-ui.herokuapp.com/
#