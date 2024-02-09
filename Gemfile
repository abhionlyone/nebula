# Source and Ruby version
source 'https://rubygems.org'
ruby '3.3.0'

# Rails and related gems
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.3'
gem 'sprockets-rails'

# JavaScript and frontend
gem 'hotwire-rails'
gem 'importmap-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

# JSON APIs
gem 'jbuilder'

# Database and caching
gem 'bootsnap', require: false
gem 'redis', '>= 4.0.1'

gem 'cssbundling-rails'
gem 'devise'

# Security gems
gem 'brakeman', require: false # Security scanner
gem 'bundler-audit', require: false # Gem vulnerability checker
gem 'rack-attack' # Protection against abusive clients

# Performance gems
gem 'bullet' # N+1 query detection
gem 'rack-mini-profiler' # Detailed profiling

# Development and test group
group :development, :test do
  gem 'better_errors'                     # Modern debugging tool
  gem 'debug', platforms: %i[mri windows] # Debugging
  gem 'pry-rails'                         # Interactive Console
end

# Development group
group :development do
  gem 'web-console' # Console on exceptions pages
  # gem "rack-mini-profiler"
  # gem "spring"
  gem 'annotate'
  gem 'rubocop', require: false # Code linting
end

# Test group
group :test do
  gem 'capybara'                 # System testing
  gem 'database_cleaner'         # Clean the database during tests
  gem 'factory_bot_rails'        # Test data creation
  gem 'faker'                    # Generate fake data
  gem 'rspec-rails'              # Expressive testing framework
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'         # Simplify RSpec tests
  gem 'simplecov', require: false # Code coverage
  gem 'vcr'                       # Record and replay HTTP interactions
  gem 'webmock'                   # Mock HTTP requests
end
