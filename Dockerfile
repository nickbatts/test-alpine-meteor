FROM ubuntu

RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    git \
	&& rm -rf /var/lib/apt/lists/* && \
	curl https://install.meteor.com/ | sh && \
	curl -sL https://deb.nodesource.com/setup_8.x | sh && \
	apt-get install -y nodejs && \
	useradd --create-home --shell /bin/bash nick

USER nick

RUN mkdir /home/nick/app

WORKDIR /home/nick/app

COPY src ./src

WORKDIR /home/nick/app/src

RUN	meteor npm install --save @babel/runtime

EXPOSE 3000