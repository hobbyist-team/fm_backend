FROM ruby:2.6.2

RUN bash -c "export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -qq && \
    apt-get -y upgrade && \
    apt-get install -y \
        build-essential \
        git-core \
        locales \
        libcurl3 \
        libgeos-dev \
        libpq-dev \
        nodejs \
        postgresql-client \
        wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/*"
RUN gem update --system && gem install bundler:2.1.4
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app
COPY Gemfile.lock /app
RUN bundle install
COPY . /app
