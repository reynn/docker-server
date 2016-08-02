## Media server using Docker containers

### Includes

##### Media
* [Plex Media Server](http://plex.tv): Serve up all of the media you have to a TV and/or share with friends
* [Plex Requests](http://plexrequests.8bits.ca/): Simple automated way for users to request new content for Plex
* [PlexPy](https://github.com/drzoidberg33/plexpy): A Python based monitoring and tracking tool for Plex Media Server

##### Tracking
* [Sonarr](http://sonarr.tv): Download TV Shows automatically
* [CouchPotato](http://couchpota.to): Download movies automatically
* [Mylar](https://github.com/evilhero/mylar): An automated Comic Book downloader.
* [Headphones](https://github.com/rembo10/headphones): Automatic music downloader.

##### Downloaders
* [SabNZBd](https://sabnzbd.org/): Newsgroup downloader
* [Deluge](http://deluge-torrent.org/): Torrent downloader


### Starting up
We will assume you already have Docker with the Docker-Compose component already available, if not go to the [Docker site](https://www.docker.com/) to find out how to install on your platform. Once Docker is installed and ready you can start everything at once using `docker-compose up -d`.  This configuration uses the [LinuxServer.io](http://linuxserver.io) images so restarting the container will update to the latest version if you want to restart everything at once use `docker-compose restart` or `docker-compose down` and `docker-compose up`.  To restart just one piece you can use `docker-compose restart {service_name}` for instance restarting just the Plex container would be `docker-compose restart plex` (refer to the docker-compose.yml file for the names.)
