# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::UserParty.new
  end

  # validations
  test "presence of " do |up|
  end

  # associations
  test "many to one user" do |up|
  end
  test "many to one party" do |up|
  end
end
