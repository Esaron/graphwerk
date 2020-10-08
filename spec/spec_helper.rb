# typed: strict
# frozen_string_literal: true

require 'pry'
require 'rspec/sorbet'
require 'bundler/setup'
require 'graphwerk'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  RSpec::Expectations.configuration.on_potential_false_positives = :nothing
  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end