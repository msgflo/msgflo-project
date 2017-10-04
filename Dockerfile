FROM node:6

# Export the Websocket port for Flowhub connection
EXPOSE 3569

# Reduce npm install verbosity, overflows Travis CI log view
ENV NPM_CONFIG_LOGLEVEL warn
# Only install production dependencies
ENV NODE_ENV production

RUN mkdir -p /var/app
WORKDIR /var/app

# Install MsgFlo and dependencies
COPY . /var/app
RUN npm install

# Install msgflo-python
RUN apt-get update && apt-get install -y \
  python \
  python-dev \
  python-pip
RUN pip install -r requirements.txt

# Map the volumes
VOLUME /var/app/graphs /var/app/components

# Ensure that runtime is working
HEALTHCHECK --interval=5m --timeout=3s \
  CMD ./node_modules/.bin/fbp-protocol-healthcheck ws://127.0.0.1:3569

CMD npm start
