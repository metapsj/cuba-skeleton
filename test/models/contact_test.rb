# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::Contact.new
  end

  # associations
  test "many to one owner party" do |contact|
    # TODO:
  end
  test "many to one party" do |contact|
    # TODO:
  end

  # validations
  test "owner party" do |contact|
    contact.validate
    model.errors[:column].must_equal['some error message']
    model.errors[:column].must_include['some error message']
  end

  test "party" do |contact|
    contact.validate
    model.errors[:column].must_equal['some error message']
    model.errors[:column].must_include['some error message']
  end
end

