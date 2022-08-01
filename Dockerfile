FROM ruby:2.6.7
 
ENV BUNDLE_WITHOUT='development:test'
ENV RAILS_ENV="staging"
ENV RACK_ENV ="staging"

RUN mkdir -p /dashboard
WORKDIR /dashboard

RUN gem install bundler -v '2.2.28'
RUN bundle init && bundle add puma

RUN ls -laH /usr/local/bin/
