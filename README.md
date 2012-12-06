# Setup

1. `gem install bundler`

2. `bundle install`

# Usage

Build the site and start the local server:

`jekyll --server`

## Deploying to S3 and invalidating the Cloudfront distribution

`jekyll-s3`

# Updating bootstrap.css

1. Download [Twitter Bootstrap](https://github.com/twitter/bootstrap/)
2. Build it by running `make`
3. Copy the resulting *bootstrap.css* to *css/bootstrap.css*
