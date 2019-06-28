# alpine-ruby-dev

A lightweight [alpine linux](https://alpinelinux.org) docker image containing ruby and a small set packages necessary to satisfy the dependencies of a basic ruby web app served with [puma](http://puma.io/).

## packages

- ruby (2.4.6)
- ruby-bundler
- ruby-bigdecimal
-	ruby-dev
-	build-base
- libssl1.1
- libc6-compat

## usage

```bash
docker run -t jwigley/alpine-ruby-dev
```