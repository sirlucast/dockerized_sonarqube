# Dockerized SonarQube

SonarQube deployment with docker-compose.
To set up services, it is necessary to copy the example environment variables file and assign the corresponding variables.

    cp .env.example .env

Next, inside "certs" directory, include SSL certificates files if necesssary and add those certs in lines 46-47 of docker-compose file.

Finally, start services with:

    docker-compose up --build --detach
