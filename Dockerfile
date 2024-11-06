FROM ruby:3.3.6-alpine3.20
RUN gem install mdl -v 0.13.0
COPY runmdl /runmdl
ENTRYPOINT ["/runmdl"]
