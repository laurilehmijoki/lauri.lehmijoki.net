# Setup

1. `gem install bundler`

2. `bundle install`

## Install Juicer

This project uses
[https://github.com/cjohansen/juicer/](https://github.com/cjohansen/juicer/) and
[https://github.com/donaldducky/jekyll-cssminify](https://github.com/donaldducky/jekyll-cssminify)
for merging and compressing the CSS files.

Install the following Juicer extensions to enable CSS compression:

`juicer install jslint`

`juicer install yui_compressor`

`juicer install closure_compiler`

The Juicer extensions are not mandatory for the site to work, but without them
Juicer will not compress the CSS.

# Usage

Build the site and start the local server:

`jekyll --server`

## Deploying to S3 and invalidating the Cloudfront distribution

`rake deploy`

# Updating bootstrap.css

1. Download [Twitter Bootstrap](https://github.com/twitter/bootstrap/)
2. Build it by running `make`
3. Copy the resulting *bootstrap.css* to *css/bootstrap.css*
