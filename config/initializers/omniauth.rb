OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '681588164266-ugkpl36dmk1ss9intvtoo5t0ffb82a8o.apps.googleusercontent.com', 'qqaChUelJiwEgCLrvUUlTXaL'
  provider :github, 'b4409494c91888af03db', 'd0f30681b203e18a5ba153a4a30f7a84111ffc6b'
end