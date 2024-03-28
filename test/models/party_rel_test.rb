# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO: fixtures
  end

  setup do
    Models::PartyRel.new
  end

  # validations
  test "presence of label" do |rel| do
  end
  test "presence of level number" do |rel| do
  end
  test "presence of sequence number" do |rel| do
  end

  test "max length of label" do |rel| do
  end
  test "max length of description" do |rel| do
  end
  test "allow nil description" |rel| do
  end

  # associations
  test "one to many parties on party_id" do |rel|
  end
  test "one to many parties on root party id" do |rel|
  end
  test "one to many parties on parent party id" do |rel|
  end
end
