## Setup

Documentation for myself.

#### Gemfile

```
# Update version once in a while
gem "github-pages", "~> 225", group: :jekyll_plugins
```

#### _config.yml

```
# Set base url to github page repository's name
baseurl: "/blog"
```

#### Run locally

```
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install ruby2.7 ruby2.7-dev build-essential dh-autoreconf
gem install jekyll bundler
bundle install

# Run in localhost
bundle exec jekyll serve
```