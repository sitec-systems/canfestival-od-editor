FROM debian:buster
MAINTAINER "Robert Lehmann <lehmrob@posteo.net>"

RUN apt-get update -y && apt-get install -y \
	python2 \
	python-pip \
	libgtk2.0-dev \
	libgtk-3-dev \
	bash

RUN pip install wxPython==4.0.7

CMD ["/usr/bin/python2", "/root/objdictedit.py"]
