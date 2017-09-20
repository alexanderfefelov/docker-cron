FROM hamiltont/docker-cron
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install --yes telnet curl netcat expect python-pip python-dev sshpass libmysqlclient-dev git \
  && pip install sql-to-graphite ecks graphitesend pyyaml \
  && git clone https://github.com/socialwifi/RouterOS-api.git && cd RouterOS-api && chmod +x setup.py && ./setup.py install && cd .. && rm -rf RouterOS-api
CMD ["devcron.py", "/cron/crontab"]
