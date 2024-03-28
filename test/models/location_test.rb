# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Location.new
  end

  # validations
  test "presence of address1" do |location|
  end
  test "presence of city label" do |location|
  end
  test "presence of state label" do |location|
  end
  test "presence of country code" do |location|
  end
  test "presence of postal code" do |location|
  end

  test "max length of address1" do |location|
  end
  test "max length of address2" do |location|
  end
  test "max length of address3" do |location|
  end
  test "max length of address4" do |location|
  end
  test "max length of city label" do |location|
  end
  test "max length of state label" do |location|
  end
  test "max length of country code" do |location|
  end
  test "max length of postal code" do |location|
  end

  test "allow nil address2" do |location|
  end
  test "allow nil address3" do |location|
  end
  test "allow nil address4" do |location|
  end

  # associations
  test "many to one site" do |location|
  end
end
