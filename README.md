# Setup

`gem install jekyll`
`gem install jekyll-s3`

## Install Juicer

This project uses
[https://github.com/cjohansen/juicer/](https://github.com/cjohansen/juicer/) and
(https://github.com/donaldducky/jekyll-cssminify)[https://github.com/donaldducky/jekyll-cssminify]
for merging and compressing the CSS files.

`
    sudo gem install juicer
    juicer install jslint
    juicer install yui_compressor
    juicer install closure_compiler
`

# Usage

`jekyll --server`
