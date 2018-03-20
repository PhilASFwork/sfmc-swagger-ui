#
# This Dockerfile starts with 'swaggerapi/swagger-ui:latest' image and copies over a Yaml file to render by default
#
# See this link for more details: https://hub.docker.com/r/swaggerapi/swagger-ui/
#

FROM swaggerapi/swagger-ui:latest
LABEL author="Sanjay Nagamangalam <sanagama2@gmail.com>"
LABEL version=1.0

ENV JSON_DIR=/json
ENV JSON_FILE=TransactionalSwagger.yaml
ENV SWAGGER_JSON=$JSON_DIR/$JSON_FILE

# Copy Yaml file into image
RUN mkdir -p $JSON_DIR
WORKDIR $JSON_DIR
COPY ./$JSON_FILE $JSON_DIR

# We don't have a CMD or ENTRYPOINT. Docker will use the one in the base image which starts ngnix.