FROM ruby:2.6.7

RUN mkdir -p /dashboard
WORKDIR /dashboard

ENV BUNDLE_WITHOUT='development:test'
ENV RAILS_ENV="staging"
ENV RACK_ENV ="staging"

RUN gem install bundler -v '2.2.28'

RUN bundle init && bundle add puma
RUN ls -laH /usr/local/bundle/bin/
