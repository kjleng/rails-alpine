FROM ruby:3.2.2-alpine AS builder
RUN apk add --no-cache \
  build-base \
  postgresql-dev

WORKDIR /app
RUN set -ex; \
  gem update --system; \
  gem install rails bundler

CMD ["rails", "server", "-b", "0.0.0.0"]
