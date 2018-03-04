FROM s3than/alpine-base:3.7

LABEL maintainer "Tim Colbert <admin@tcolbert.net>"

WORKDIR /application

RUN apk add --no-cache docker ansible \
  py2-pip bash \
  openssh git

RUN apk add --no-cache \
  libc-dev \
  python2-dev \
  gcc \
  linux-headers

RUN pip install docker && \
  pip install jmespath && \
  pip install molecule && \
  pip install boto && \
  pip install boto3

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["molecule"]
