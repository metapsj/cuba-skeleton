# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO:
  end

  setup do
    user_id = 1
  end

  test "index" do
    get "/users"
    assert last_response.ok?
  end

  test "new" do
    get "/users/new"
    assert last_response.ok?
  end

  test "show" do |user_id|
    get "/users/#{user_id}"
    assert last_response.ok?
  end

  test "edit" do |user_id|
    get "/users/#{user_id}"
    assert last_response.ok?
  end

  test "create" do
    post "/users"
    assert last_response.ok?
  end

  test "update" do |user_id|
    put "/users/#{user_id}"
    assert last_response.ok?
  end

  test "destroy" do |user_id|
    delete "/users/#{user_id}"
    assert last_response.ok?
  end
end
