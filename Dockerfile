FROM ruby:3.2.1-alpine3.17
RUN gem install mdl -v 0.12.0
COPY runmdl /runmdl
ENTRYPOINT ["/runmdl"]
