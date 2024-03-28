# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Event.new
  end

  # validations
  test "presence of label" do |event|
  end

  test "max length of label" do |event|
  end

  test "max length of description" do |event|
  end

  test "allow nil description" do |event|
  end

  test "max length of uom code" do |event|
  end

  # associations
  test "many to one site" do |event|
  end

  test "one to many schedules" do |event|
  end
end
