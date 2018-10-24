FROM ruby:2.5.1-slim

# Install basic packages
RUN apt-get update && apt-get install -y libgles2-mesa postgresql-client build-essential git libpq-dev imagemagick nodejs chromium libcurl4-openssl-dev

# Configure the main working directory. This is the base
# directory used in any further RUN, COPY, and ENTRYPOINT
# commands.
ENV app /app
RUN mkdir -p $app
WORKDIR $app

ENV BUNDLE_PATH /rubygems

ADD . $app