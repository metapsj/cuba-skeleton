# frozen_string_literal: true

module Models
  class Site < Sequel::Model

    many_to_one :party
    many_to_one :location

    def validate
      super
      validates_presence [:label]

      validates_max_length 50, :label
      validates_max_length 255, :description, allow_nil: true
    end

  end
end
