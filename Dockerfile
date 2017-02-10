FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.2

RUN gem install fast_innodb_import --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fast_innodb_import"]
CMD ["--help"]
