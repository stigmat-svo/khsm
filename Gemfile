source 'https://rubygems.org'

ruby '2.5.8'

gem 'rails', '~> 4.2.10'

# Удобная админка для управления любыми сущностями
gem 'rails_admin'

gem 'devise'
gem 'devise-i18n'

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'twitter-bootstrap-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'font-awesome-rails'
gem 'russian'

group :development, :test do
  gem 'sqlite3', '1.3.13'
  gem 'byebug'
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'

  # Гем, который использует rspec, чтобы смотреть наш сайт
  gem 'capybara'

  # Гем, который позволяет смотреть, что видит capybara
  gem 'launchy'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data'
