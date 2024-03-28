# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Party.new
  end

  # validations
  test "presence of party type label" do |party|
    # TODO:
  end
  test "presence of party number" do |party|
    # TODO:
  end
  test "presence of full name" do |party|
    # TODO:
  end

  test "max length of party type label" do |party|
    # TODO:
  end
  test "max length of party number" do |party|
    # TODO:
  end
  test "max length of full name" do |party|
    # TODO:
  end
  test "max length of first nane" do |party|
    # TODO:
  end
  test "max length of middle nane" do |party|
    # TODO:
  end
  test "max length of last nane" do |party|
    # TODO:
  end

  test "allow nil first name" do |party|
    # TODO:
  end
  test "allow nil middle name" do |party|
    # TODO:
  end
  test "allow nil last name" do |party|
    # TODO:
  end

  # associations
  test "one to many user parties" do |party|
    # TODO:
  end
  test "one to many party rels party" do |party|
    # TODO:
  end
  test "one to many party rels on root party" do |party|
    # TODO:
  end
  test "one to many party rels on parent party" do |party|
    # TODO:
  end
  test "one to many sites" do |party|
    # TODO:
  end
  test "one to many contacts on owner party" do |party|
    # TODO:
  end
  test "one to many contacts on party" do |party|
    # TODO:
  end
  test "one to many invites" do |party|
    # TODO:
  end

end

