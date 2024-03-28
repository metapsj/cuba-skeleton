# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Schedule.new
  end

  # validations
  test "presence of" do |schedule|
  end

  # associations
  test "one to many event" do |schedule|
  end

end
