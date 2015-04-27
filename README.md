# docker-cron

Cron with tools in a container

Build:

    docker build --tag alexanderfefelov/docker-cron .

Run:

    docker run --name cron --detach --volume /etc/localtime:/etc/localtime:ro --volume /HOST/CRON/DIRECTORY:/cron alexanderfefelov/docker-cron
