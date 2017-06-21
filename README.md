msgflo-project [![Greenkeeper badge](https://badges.greenkeeper.io/msgflo/msgflo-project.svg)](https://greenkeeper.io/) [![Build Status](https://travis-ci.org/msgflo/msgflo-project.svg?branch=master)](https://travis-ci.org/msgflo/msgflo-project)
==============

This repository provides a template for creating and running new [MsgFlo](https://msgflo.org) projects.

## Features

* Support for JavaScript components
* Support for CoffeeScript components
* Support for Python components
* docker-compose runnable environment

## Getting started

* Fork this repository and name it to whatever suits your purpose
* Update the project name and repository details accordingly in `package.json`
* If you need additional libraries, add them to `package.json` (for Node.js) or `requirements.txt` (for Python)

You can use this template for development both with a direct installation or with Docker.

### Running locally

* Install and start a [Mosquitto](https://mosquitto.org/) message broker
* Install the Node.js dependencies of this project with `npm install`
* Install the Python dependencies of this project with `pip install -r requirements.txt`
* Start the MsgFlo broker with `MSGFLO_BROKER=mqtt://localhost npm start`

### Running with Docker

* Ensure you have a running Docker daemon
* Start the project with `docker-compose up`

## Editing in Flowhub

Everything is set up so that you can edit the project in [Flowhub](https://flowhub.io)

Once you've installed and started the service either locally or with Docker, open Flowhub with:

<http://app.flowhub.io#runtime/endpoint?protocol%3Dwebsocket%26address%3Dws%3A%2F%2Flocalhost%3A3569>

You should see an empty graph. Click _Edit as project_ to start hacking!

## Test automation

* Enable your local fork in [Travis CI](https://travis-ci.org/)
* Tests are written in [fbp-spec format](https://github.com/flowbased/fbp-spec) and located in `spec/` folder
* You can run tests locally with `npm test` (note: you'll have to do `npm install` for this even when running with Docker)
