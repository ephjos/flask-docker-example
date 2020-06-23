# flask-docker-example

This is a basic Flask application that can immediately
deployed as a docker container.

> Instructions for Linux users

## Dependencies

- python3
- docker
- make
- virtualenv

## app/

This directory contains the source for the Flask application.
In this directory, `make run` will install all dependencies in
a virtual environment and run the server on `localhost:8080`.
Use this for development.

The app contains a simple base and index page template, as
well as the css source for bootstrap. This should allow you
to get up an running fast.

## /

Here, we have another Makefile, a script, and a dockerfile.
At the top of the Makefile, two variables are defined that
are used in the rest of the file. `TAG` is the name of the
container. `USER` is your docker hub username, which is used
when publishing the container. To configure the port that
the server runs on, the values in both the dockerfile and
the makefile must all be the same (default 5001).

`make build` will build the docker container.

`make run` will run this container.

`make push` will prompt for login and push the container
to your docker hub account.

`make run-dh` will pull the container from docker hub and run it

This is the command that can be used to run your
container in production. For more info about deploying this
(with https enabled!), check out my blog post
[here](https://ephjos.io/blog/deploying%20a%20flask%20application%20with%20docker,%20over%20https).
