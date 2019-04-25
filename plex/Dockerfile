FROM linuxserver/plex

ADD plex_post_processor.sh /app

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:stebbins/handbrake-releases \
    && apt-get update \
    && apt-get install -y handbrake-cli udev \
    && chmod +x /app/plex_post_processor.sh
