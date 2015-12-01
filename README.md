# setup-osx
Mac OS X configuration management using Itamae

## Install dependencies

```bash
$ bundle install --path vendor/bundle
```

## Execute

```bash
$ bundle exec itamae local roles/local.rb -y nodes/local.yml
```

## Lint

```bash
$ bundle exec travis lint .travis.yml 
$ bundle exec rubocop
$ bundle exec yaml-lint nodes/
```

## Run tests

```bash
$ bundle exec rake spec
```
