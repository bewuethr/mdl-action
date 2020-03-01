FROM ruby:2.7.0-alpine3.11
RUN gem install mdl -v 0.9.0
COPY entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]
