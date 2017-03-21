# dockerized_django_hello
Django starter for dockerized project - basic set of files to build a django app within Docker container. Also provides docker-compose file for faster run of the container.

# Building the project

In the main dir run:

1. `$ docker build -t username/hello_django .`
2. `$ docker-compose up` (remember to change image name in the `docker-compose.yml`)
3. Go to `localhost:8001` in the browser.

## Source
This repository was build on base of [Michał Karzynski's blog post](http://michal.karzynski.pl/blog/2015/04/19/packaging-django-applications-as-docker-container-images/)
