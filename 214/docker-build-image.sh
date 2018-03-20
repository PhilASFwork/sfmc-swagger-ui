#!/bin/bash

set -x

# 1. get rid of any existing images
docker rmi -f allenhoem/sfmc-swagger-ui-214
docker rmi -f registry.heroku.com/sfmc-swagger-ui-214/web

# 2. build the nerw Docker image
docker build . -t allenhoem/sfmc-swagger-ui-214
docker images

#
# 3. Test locally with the command below:
# docker run -p 4000:8080 allenhoem/sfmc-swagger-ui
#
# Open a browser and browse to: http://localhost:4000
#

#
# 4. (Optional) Publish to Dockerhub with the command below:
# docker push allenhoem/sfmc-swagger-ui
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
heroku container:login
sleep 2
#
docker tag allenhoem/sfmc-swagger-ui registry.heroku.com/sfmc-swagger-ui-214/web
docker push registry.heroku.com/sfmc-swagger-ui-214/web
#heroku container:push web -a sfmc-txn-msg-api-214  #I think I can just go straight to this.
#
# Open a browser and browse to: https://sfmc-swagger-ui.herokuapp.com/
#