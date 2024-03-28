# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::User.new
  end

  # shield
  test "mixin for shield" do |user|
    # mixin included Shield::Model
  end
  test "id mapping for shield" do |user|
    # id
  end
  test "fetch method for shield" do |user|
    # fetch
  end
  test "authenticate method for shield" do |user|
    # User.authenticate("foo@bar.com", "pass1234")
  end

  # validations
  test "presence of user name" do |user|
  end
  test "presence of crypted password" do |user|
  end

  test "max length of " do |user|
  end
  test "max length of " do |user|
  end

  test "format of user name" do |user|
  end

  # associations
  test "one to many user parties" do |user|
  end

end
