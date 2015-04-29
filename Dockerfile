FROM hamiltont/docker-cron
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install --yes telnet curl netcat expect python-pip
CMD ["devcron.py", "--verbose", "/cron/crontab"]
