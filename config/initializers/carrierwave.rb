CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'

  if Rails.env.test? || Rails.env.cucumber? || Rails.env.development?
    config.storage = :file
    config.enable_processing = false
    config.root = '#{Rails.root}/tmp'
  else
    config.storage = :fog
  end


	config.fog_credentials = {
		:provider => 'aws',
		:aws_access_key_id => ENV['S3_KEY'],
		:aws_secret_access_key => ENV['S3_SECRET'],
		:region => 'ap-southeast-1',
    :path_style => true
	}

  config.cache_dir = '#{Rails.root}/tmp/uploads'
  config.fog_directory = ENV['S3_BUCKET_NAME']
  config.fog_public = true


  # config.fog_host = "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}"
  config.ignore_integrity_errors = false
  config.ignore_processing_errors = false
  config.ignore_download_errors = false




end