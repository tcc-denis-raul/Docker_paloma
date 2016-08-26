FROM ubuntu:14.04

RUN \ 
	apt-get update && \ 
	apt-get install -y git && \ 
	apt-get install -y python && \ 
	apt-get install -y python-pip
RUN \
	pip install virtualenv && \
	pip install virtualenvwrapper

RUN	echo export WORKON_HOME=~/.virtualenvs > ~/.bashrc

RUN mkdir -p  $HOME/workspace/Projects

COPY get_projects.sh $HOME/workspace/get_projects.sh


