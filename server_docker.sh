#!/bin/sh
set -eu

IMAGE="ruby:3.3"
BUNDLER_VERSION="2.3.26"

docker run --rm -it \
  -p 4000:4000 \
  -p 35729:35729 \
  -v "$PWD:/app" \
  -w /app \
  "$IMAGE" \
  sh -lc "
    gem install bundler -v ${BUNDLER_VERSION} --no-document >/dev/null &&
    bundle _${BUNDLER_VERSION}_ install &&
    bundle _${BUNDLER_VERSION}_ exec jekyll serve \
      --host 0.0.0.0 \
      --port 4000 \
      --livereload \
      --watch \
      --force_polling \
      --config _config.yml,_config_github.yml
  "
