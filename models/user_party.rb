# frozen_string_literal: true

module Models
  class UserParty < Sequel::Model

    many_to_one :user
    many_to_one :party

    def validate
      super
    end

  end
end
