# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Site.new
  end

  # validations
  test "presence of label" do
  end
  
  test "max length of label" do
  end
  test "max length of description" do
  end

  test "allow nil description" do
  end

  # associations
  test "many to one party" do
  end
  test "many to one location" do
  end
end

