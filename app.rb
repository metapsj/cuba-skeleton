# frozen_string_literal: true

require_relative 'shotgun'
require_relative 'settings'
require_relative 'db'

# middlewares
Cuba.use Rack::MethodOverride
Cuba.use Rack::Session::Cookie,
  key: Settings::SECRET_KEY,
  secret: Settings::SECRET_TOKEN
Cuba.use Rack::Static,
  root: "public",
  urls: %w[/js /css /scss /img]
Cuba.use Rack::Protection
Cuba.use Rack::Protection::RemoteReferrer

# plugins
Cuba.plugin Cuba::Safe
Cuba.plugin Cuba::Render
Cuba.plugin Shield::Helpers

# libraries
Dir["./models/**/*.rb"].each { |rb| require rb }
Dir["./routes/**/*.rb"].each { |rb| require rb }

# routes
Cuba.define do
  persist_session!

  # root
  on root do
    render 'index'
  end

  # users
  on "users" do
    run Routes::User
  end

  # parties
  on "parties" do
    run Routes::Party
  end

  # events
  on "events" do
    run Routes::Event
  end

  # sign-up
  on "signup" do
    run Routes::Signup
  end

  # sign-in
  on 'signin' do
    run Routes::Signin
  end

  # sign-out
  on "signout" do
    run Routes::Signout
  end

  # on authenticated(Models::User) do
  #   run Routes::User
  # end

  # on 'admin' do
  #   run Routes::Admin
  #   res.write "Routes::Admin"
  # end

  on default do
    # run Routes::Guest
    res.write "Routes::App #default"
  end
end

