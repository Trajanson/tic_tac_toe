OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '437523903117090', '9ec2800ea7761c45c02c6bd0a4a41858', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
