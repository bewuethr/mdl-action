FROM ruby:3.4.6-alpine3.21
RUN gem install mdl -v 0.13.0
COPY runmdl /runmdl
ENTRYPOINT ["/runmdl"]
