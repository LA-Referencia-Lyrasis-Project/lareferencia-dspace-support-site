# Run and Validate

## Recommended Run Mode (Docker)
Use Docker to avoid host Ruby drift.

Serve locally with livereload:

```bash
./server_docker.sh
```

One-shot production-like build:

```bash
docker run --rm -v "$PWD:/app" -w /app ruby:3.3 bash -lc '\
  gem install bundler -v 2.3.26 --no-document >/dev/null && \
  bundle _2.3.26_ install && \
  bundle _2.3.26_ exec jekyll build --config _config.yml,_config_github.yml'
```

## Optional Local Ruby Mode (macOS)
Use only if Docker is not desired.

```bash
brew install ruby@3.3
echo 'export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
gem install bundler -v 2.3.26
bundle _2.3.26_ install
bundle _2.3.26_ exec jekyll serve --livereload --config _config.yml,_config_github.yml
```

## Known Failure Modes
1. `cannot load such file -- logger` when running Jekyll:
   - Cause: incompatible Ruby/Jekyll combination (commonly Ruby 4 runtime with old stack expectations).
   - Fix: use Docker Ruby 3.3 flow, or align local Ruby to 3.3.
2. `Could not find 'bundler' (2.3.26)`:
   - Fix: `gem install bundler -v 2.3.26`.
3. `bundler: command not found: jekyll` inside Docker:
   - Cause: `bundle install` skipped.
   - Fix: run `bundle _2.3.26_ install` before `bundle exec`.

## Validation Checklist
1. Build exits with code 0.
2. Home pages render in EN/ES/PT.
3. Header/logo/nav remain aligned on desktop and mobile.
4. Language switch points to equivalent route.
5. Home post order follows `home_order`.
