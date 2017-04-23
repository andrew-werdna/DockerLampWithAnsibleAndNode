FROM python:2.7

MAINTAINER andrew.brown5717@gmail.com

RUN apt-get update -y
RUN apt-get install -y curl vim man git python-software-properties software-properties-common wget dos2unix zip unzip rsync
RUN pip install ansible docker-py docker-compose ansible-container awscli boto
RUN pip install --upgrade --user awsebcli
RUN echo "export PATH=~/.local/bin:\$PATH" >> ~/.bashrc

ADD ./conf /etc/ansible
#RUN dos2unix /etc/ansible/ec2.py
RUN chmod +x /etc/ansible/ec2.py

CMD /bin/bash
