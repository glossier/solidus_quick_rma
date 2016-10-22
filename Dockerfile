FROM ruby:2.3.1-alpine
MAINTAINER DW & Braidn <itsallbroken@godynamo.com>
# Env
ENV REFRESHED_AT 2016-10-20
ENV REPO_DIR /src/repo
ENV GEM_HOME /src/gems
ENV ENV_FILE /src/repo/.env
ENV BUILD_PACKAGES bash libffi-dev openssl-dev linux-headers zlib-dev readline-dev yaml-dev git curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby-io-console ruby-bundler nodejs libxml2-dev libxslt-dev imagemagick sqlite-dev
# Build all required packages
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*
# Create and switch to repo dir
RUN mkdir -p $GEM_HOME $REPO_DIR
WORKDIR $REPO_DIR
# Copy the rest of the app
ADD . $REPO_DIR
# Symlink vendor
#### NOTE: In production, the bundle command should be appended with `--without development test`
COPY Gemfile* $REPO_DIR/
# Set some defaults for bundler
ENV BUNDLE_GEMFILE=$REPO_DIR/Gemfile \
    BUNDLE_JOBS=6 \
    BUNDLE_PATH=$GEM_HOME
# Phantom JS
RUN npm install -g phantomjs-prebuilt
# Bundle ALL the gems
RUN gem install bundler
    # bundle install
# ENTRYPOINT ["bundle", "exec"]
# Default command, running app as a service
# CMD ["rails", "server", "-b", "0.0.0.0"]
