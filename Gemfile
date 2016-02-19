source 'https://rubygems.org'
ruby "2.2.2"


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Heroku armor
gem 'exception_handler', '~> 0.4'
gem 'responders', '~> 2.0'
gem 'rack-timeout'

# Use Puma for a server
  gem 'puma'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  
  gem 'dotenv-rails'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
# Use PostGreSQL as the production database
  gem 'pg'
  gem 'rails_12factor'
end

# SPREE GEMS ############

gem 'spree', github: 'spree/spree', branch: '~> 3.0.4'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '~> 3.0.4'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '~> 3.1.0.beta'
# gem 'spree_i18n', github: 'spree-contrib/spree_i18n', branch: '~> 3.1.0.beta'
# gem 'spree_simple_sales', :path => '../spree_simple_sales'
gem 'spree_slider', github: 'spree-contrib/spree_slider'
gem 'spree_static_content', github: 'spree-contrib/spree_static_content', branch: 'master'
# gem 'spree_essentials', '~> 0.5.0'
# gem 'spree_essential_menus', :git => 'git://github.com/matfiz/spree_essential_menus.git'
gem 'spree_wishlist', github: 'spree-contrib/spree_wishlist', branch: '~> 3.1.0.beta'
gem 'spree_email_to_friend', github: 'spree-contrib/spree_email_to_friend', branch: '~> 3.1.0.beta'


