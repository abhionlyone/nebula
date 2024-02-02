# frozen_string_literal: true

# This file is copied to spec/ when you run 'rails generate rspec:install'

require 'simplecov'
SimpleCov.start 'rails'

require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'

# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?

require 'rspec/rails'
require 'shoulda/matchers' # Add this line to require shoulda/matchers

# Requires supporting ruby files in spec/support/ and its subdirectories.
# Uncomment the line below to automatically require all files in the support
# directory.
# Rails.root.glob('spec/support/**/*.rb').sort.each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

RSpec.configure do |config|
  # Include FactoryBot syntax to simplify calls to factories
  config.include FactoryBot::Syntax::Methods

  # Use transactional fixtures to maintain a clean state between tests
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviours to your tests based on their file location
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces
  config.filter_rails_from_backtrace!

  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end

# Shoulda Matchers configuration
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
