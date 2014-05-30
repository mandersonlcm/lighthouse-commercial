CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: 'AKIAI32PTERUQJYBQUDA',
    aws_secret_access_key: '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'
  }
  if Rails.env.production?
    config.fog_directory = "lighthouse_commercial_production"
  else
    config.fog_directory = "lighthouse_commercial_test"
  end
end