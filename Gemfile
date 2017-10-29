source 'https://rubygems.org'



#Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff http://rails-i18n.org
gem 'rails-i18n'
#Manage Procfile-based applications 
gem 'foreman'
#Flexible authentication solution for Rails with Warden. 
gem 'devise'
#Translations for the devise gem
gem 'devise-i18n'
#Rails gem of the Bootstrap based admin theme SB Admin 2. 
gem 'bootstrap_sb_admin_base_v2'
#Normalize.css is an alternative to CSS resets
gem 'normalize-rails'
#Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
#Minimal authorization through OO design and pure Ruby classes
gem "pundit"
# Markdown Lorem Ipsum generator
gem 'doctor_ipsum'
#Integration of RubyMoney - Money with Rails
gem 'money-rails'
#Easy file attachment management for ActiveRecord 
gem 'paperclip', '~> 5.0.0'
# The safe Markdown parser, reloaded.
gem 'redcarpet'
#FriendlyId is the “Swiss Army bulldozer” of slugging and permalink plugins for ActiveRecord.
gem 'friendly_id'
#If Turbolinks are not enough for you. Wiselinks makes your application work faster.
gem 'wiselinks'
# ⚡ A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Translations for the kaminari gem
gem 'kaminari-i18n', '~> 0.3.2'
# A Ruby Gem that wraps the functionality of jQuery Raty library, and provides optional IMDB style rating.
gem 'ratyrate'



source 'https://rails-assets.org' do
  #bootstrap growl
  gem 'rails-assets-bootstrap.growl'

  #Animate CSS
  gem 'rails-assets-animate-css'

  #bootboxJS
  gem 'rails-assets-bootbox'

  #Boostrap
  gem 'rails-assets-bootstrap', '3.3.7'

  #markdonw editor bootstrap
  gem 'rails-assets-bootstrap-markdown'

  #preview markdown
  gem 'rails-assets-marked'
end
# **

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'mysql2', '~> 0.3.18'
end

group :development, :test do
  #Generate Entity-Relationship Diagrams for Rails applications < diagramas de relacionamento - rake erd
  gem 'rails-erd'

  # Rack Middleware for handling Cross-Origin Resource Sharing (CORS), which makes cross-origin AJAX possible.
  gem 'rack-cors', :require => 'rack/cors'

  #Better error page for Rack apps
  gem 'better_errors'

  #A library for generatsing fake data such as names, addresses, and phone numbers.
  gem 'faker'  

  #Markdown Lorem Ipsum generator
  gem 'doctor_ipsum'

  #Catches mail and serves it through a dream. 
  gem 'mailcatcher'

  # O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
  gem 'lerolero_generator'
  # **

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Biblioteca de integração em Ruby
  gem "pagseguro-oficial", "~> 2.5.0"

  gem 'capistrano-rvm'
  gem 'capistrano', '~> 3.7'
  gem 'capistrano-bundler', '~> 1.2'
  gem 'capistrano-rails', '~> 1.2'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

