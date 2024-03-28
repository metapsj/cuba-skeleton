# frozen_string_literal: true

module Models
  class Schedule < Sequel::Model

    many_to_one :event

    def validate
      super
    end

  end
end
