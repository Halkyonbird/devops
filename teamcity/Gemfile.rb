source 'https://rubygems.org'

gem 'rails'
gem 'redis'
gem 'httparty'
gem 'net-ssh'
gem 'sshkit'
gem 'sshkit-sudo'

gem 'json'
gem 'docker'
gem 'docker-api'


group :test do
  gem 'rspec'
  gem 'serverspec'

  #gem 'rspec-rails', '3.4.0'
  #gem 'rspec-activemodel-mocks'
  gem 'factory_girl_rails'
  #gem 'database_cleaner'
  gem 'faker'
  #gem 'ffaker'
  gem 'timecop'
  gem 'capybara'
  #gem "capybara-webkit"
  gem 'selenium-webdriver'

  gem 'test_email_redis', '0.0.1' #, path: '../test_email_redis'
end
