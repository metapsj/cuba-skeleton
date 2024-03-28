# frozen_string_literal: true

require_relative '../helper'

scope do
  prepare do
    # TODO:
  end

  setup do
    # TODO
  end

  test "root #index" do
    get "/"
    assert last_response.ok?
  end

  test "users #index" do
    get "/users"
    assert last_response.ok?
  end

  test "events #index" do
    get "/events"
    assert last_response.ok?
  end

  test "signup #index" do
    get "/signup"
    assert last_response.ok?
  end

  test "signin #index" do
    get "/signin"
    assert last_response.ok?
  end

  test "signout #index" do
    get "/signout"
    assert last_response.ok?
  end

  test "root #default" do
    get "/unknown"
    assert last_response.ok?
  end
end
