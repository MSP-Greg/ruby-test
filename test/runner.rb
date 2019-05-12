# frozen_string_literal: true

puts '', RUBY_DESCRIPTION

require 'minitest'

Dir.chdir(__dir__) { |d| Dir['test_*.rb'].each { |t| require_relative t } }

unless Minitest.run %w[-v --no-plugins]
  exit 1
end