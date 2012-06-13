# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
SocialApp::Application.config.secret_token = '9668fd1ce1fe3119649318a211ae8f7f9b31ad0dd06911a9a9621c187b5b73cade76c7b64c0633af8ddea784755cbe299eee5a377fd86086f83f6491655d83fd'

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIG2HNJJWKARSISJQ',       # required
    :aws_secret_access_key  => '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',       # required
    #:region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'lauremegan'                     # required
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
