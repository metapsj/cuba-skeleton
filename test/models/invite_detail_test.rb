# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::InviteDetail.new
  end

  # validations
  test "presence of invite detail type label" do |detail|
  end

  test "max length of invite detail type label" do |detail|
  end

  # associations
  test "many to one invite" do |detail|
  end
end
