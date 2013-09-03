OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'] = "470400313057331", ENV['FACEBOOK_SECRET'] = "427dc60ae30bcfe0dc0cc29b687dddb7"
end