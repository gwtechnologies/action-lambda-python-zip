FROM python:3.8-slim-buster

RUN apt-get update \
  && apt-get install -y --no-install-recommends jq zip
RUN pip install awscli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
