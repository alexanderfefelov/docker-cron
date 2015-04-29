FROM hamiltont/docker-cron
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install --yes telnet curl netcat expect python-pip \
  && pip install sql-to-graphite
CMD ["devcron.py", "--verbose", "/cron/crontab"]
