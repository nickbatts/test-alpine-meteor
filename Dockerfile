FROM ubuntu

RUN apt-get update && apt-get install -y \
    aufs-tools \
    automake \
    build-essential \
    curl \
    git \
    sudo \
	&& rm -rf /var/lib/apt/lists/* && \
    curl https://install.meteor.com/ | sh && \
	curl -sL https://deb.nodesource.com/setup_8.x | sh && \
	apt-get install -y nodejs && \  

    # Clean up stuff that's no longer needed
    apt-get autoclean && apt-get autoremove -y && apt-get clean && \

    # Create user and add to sudoers
	useradd --create-home --shell /bin/bash nick && \
    echo 'nick ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    adduser nick sudo

USER nick

RUN mkdir /home/nick/app
    #sudo cp -R /root/.meteor $HOME/.meteor

WORKDIR /home/nick/app

COPY src ./src

WORKDIR /home/nick/app/src

RUN	sudo chown -R nick /home/nick && \
    sudo npm install --production && \
    meteor build ../build --directory && \
    (cd ../build/bundle/programs/server && sudo npm install)

ENV PORT=3000 ROOT_URL=http://localhost:$PORT

EXPOSE 3000