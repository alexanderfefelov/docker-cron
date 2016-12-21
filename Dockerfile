FROM hamiltont/docker-cron
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install --yes telnet curl netcat expect python-pip python-dev sshpass \
  && pip install sql-to-graphite ecks graphitesend pyyaml
CMD ["devcron.py", "/cron/crontab"]
