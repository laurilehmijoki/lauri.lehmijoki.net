desc 'Deploy to S3 and invalidate the Cloudfront distribution'
task :deploy do
  sh "jekyll-s3"
  sh "cf-s3-inv"
end
