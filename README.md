# Cups-Server-Docker
Cups Print Server

# To Build:
docker build -t cups:{Your Version Number} build --no-cache

# To Run:
Use the docker-compose.yml in the run folder

Replace the {Your Version Number} in the docker-compose.yml file

Run with: docker-compose up -d

# Docker Compose Enviromental Variables:
pass - Changes the cup account password
port - Changes the port number for the cups server in the config file

# Notes
Runs as a non-root user
Default account:password - cup:cup