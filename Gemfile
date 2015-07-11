source 'https://rubygems.org'


gem 'rails', '4.2.1'

# db
gem 'pg'


# asset
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'turbolinks'

gem 'bourbon' # a simple and lightweight mixin library for sass
gem 'neat'    # a lightweight, semantic grid framework build with bourbon
gem 'refills' # components and patterns built with bourbon and neat

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# authentication
gem 'devise'

# app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # for debug
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'web-console', '~> 2.0'

  # for speed up
  gem 'spring'

  # for manage test data
  gem 'seed_dump' # rake db:seed:dump for dump
end
