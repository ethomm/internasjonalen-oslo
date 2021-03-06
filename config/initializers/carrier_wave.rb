if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_provider = "fog/aws"
		config.fog_credentials ={
		# Configuration for Amazone S3
		:provider 				=> 'AWS',
		:aws_access_key_id 		=> ENV['S3_ACCESS_KEY'],
		:aws_secret_access_key	=> ENV['S3_SECRET_KEY'],
		region:                'eu-west-2'
		}
		config.fog_directory		= ENV['S3_BUCKET']
		
	end
end

module CarrierWave
  module MiniMagick
    def quality(percentage)
      manipulate! do |img|
        img.quality(percentage.to_s)
        img = yield(img) if block_given?
        img
      end
    end
  end
end