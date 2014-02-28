# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
Spree.config do |config|
  config.site_name = "Cecil & Co"
  config.use_s3 = true
  config.s3_bucket = ENV['S3_BUCKET']
  config.s3_access_key = ENV['S3_ACCESS_KEY_ID']
  config.s3_secret = ENV['S3_SECRET_ACCESS_KEY']
  config.s3_host_alias = ENV['CLOUDFRONT_URL']
  config.attachment_url = ':s3_alias_url'
end

Spree.user_class = "Spree::User"
