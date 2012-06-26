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

`jekyll --server`

## Uploading to AWS S3

Add the following stuff into file *_jekyll_s3.yml*:

    s3_id: <AWS-KEY>
    s3_secret: <AWS-SECRET>
    s3_bucket: <AWS-S3-BUCKET-NAME>

Then `jekyll --server` and then `jekyll-s3`.
