CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["AWS_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_KEY"]
  }
  if Rails.env.production?
    config.fog_directory = "lighthouse_commercial_production"
  else
    config.fog_directory = "lighthouse_commercial_test"
  end
end
