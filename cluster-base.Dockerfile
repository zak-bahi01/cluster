FROM openjdk:11-jre-slim

RUN mkdir -p /opt/workspace 
RUN apt-get update -y
RUN apt-get install -y procps 
RUN apt-get install -y python3 
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN rm -rf /var/lib/apt/lists/*

ENV SHARED_WORKSPACE=/opt/workspace

VOLUME /opt/workspace
