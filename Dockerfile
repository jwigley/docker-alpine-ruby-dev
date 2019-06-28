FROM alpine:latest

ENV RUBY_MAJOR 2.4
ENV RUBY_VERSION 2.4.6
ENV BUNDLER_VERSION 2.0.2
ENV BUNDLE_SILENCE_ROOT_WARNING=1

# skip installing gem documentation
RUN mkdir -p /usr/local/etc \
  && { \
    echo 'install: --no-document'; \
    echo 'update: --no-document'; \
  } >> /etc/gemrc

# install ruby, ruby dev, bundler
RUN apk update && apk add --no-cache \
  ruby \
  ruby-bundler \
  ruby-bigdecimal \
	ruby-dev \
	build-base \
  libssl1.1 \
  libc6-compat

# install specific bundler version
RUN gem install bundler --version "$BUNDLER_VERSION"

RUN bundler config --global build.nokogiri --use-system-libraries

WORKDIR /app

CMD ["/bin/ash"]