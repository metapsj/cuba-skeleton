# frozen_string_literal: true

require 'cuba/test'
require 'cuba/capybara'
require 'fixture_dependencies/helper_methods'
require_relative '../app'

FixtureDependencies.fixture_path = './test/fixtures'

class Cutest::Scope
  include FixtureDependencies::HelperMethods

  alias :fixtures :load

  # def run(*args, &block)
  #   Sequel::Model.db.transaction(:rollback => :always) { super }
  # end

  # def around
  #  DB.transaction(:rollback=>:always, :savepoint=>true, :auto_savepoint=>:true){ super }
  # end
end
