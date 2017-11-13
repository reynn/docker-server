FROM linuxserver/plex

RUN apt-get update \
    && add-apt-repository ppa:stebbins/handbrake-releases \
    && apt-get update \
    && apt-get install handbrake-cli

ADD plex_post_processor.sh /app