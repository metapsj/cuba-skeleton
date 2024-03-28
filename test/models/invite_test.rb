# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Invite.new
  end

  # validations
  test "presence of invite type label" do |invite|
  end

  test "presence of invite status label" do |invite|
  end

  test "presence of invite info" do |invite|
  end

  test "presence of location info" do |invite|
  end

  test "presence of site info" do |invite|
  end

  test "max length of invite type label" do |invite|
  end

  test "max length of invite status label" do |invite|
  end

  # associations
  test "many to one party" do |invite|
  end
end
