FROM ruby:2.7.2-alpine3.11
RUN gem install mdl -v 0.9.0
COPY runmdl /runmdl
ENTRYPOINT ["/runmdl"]
