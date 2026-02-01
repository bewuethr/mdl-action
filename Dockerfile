FROM ruby:4.0.1-alpine3.22
RUN gem install mdl -v 0.15.0
COPY runmdl /runmdl
ENTRYPOINT ["/runmdl"]
