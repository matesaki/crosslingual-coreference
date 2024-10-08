# syntax=docker/dockerfile
# @Author: Martin Sakin, martin.sakin <at> gmail.com
# @Date: 2024-04-15
#
# docker build -t coref:0.1 .
# docker run -d --name coreftry --mount=type=bind,src=$PWD,dst=/coref coref:0.1
# docker exec -it coreftry bash


FROM docker.io/python:3.10.14

ENV PIP_ROOT_USER_ACTION=ignore

RUN pip install --upgrade pip && \
	pip install poetry && \
	poetry config virtualenvs.create false

RUN printf "\n\n\
alias ll='ls -lsa'\n\
alias l='ls -ls'\n\
alias py='python3'\n\
alias e='exit'\n" >> /root/.bashrc

WORKDIR /coref
CMD sleep infinity
