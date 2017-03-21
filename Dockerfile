FROM ubuntu:16.10

MAINTAINER Janusz Kamienski

ENV DOCKYARD_SRC=hello_django
ENV DOCKYARD_SRVHOME=/srv
ENV DOCKYARD_SRVPROJ=/srv/hello_django

RUN apt-get update && apt-get install -y python python-pip

WORKDIR $DOCKYARD_SRVHOME
RUN mkdir media static logs
VOLUME ["$DOCKYARD_SRVHOME/media/", "$DOCKYARD_SRVHOME/logs/"]

COPY $DOCKYARD_SRC $DOCKYARD_SRVPROJ

RUN pip install -r $DOCKYARD_SRVPROJ/requirements.txt

EXPOSE 8000

WORKDIR $DOCKYARD_SRVPROJ
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
