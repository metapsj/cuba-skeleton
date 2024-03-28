# frozen_string_literal: true

module Models
  class Event < Sequel::Model

    many_to_one :site
    one_to_many :schedules

    def validate
      super
      validates_presence [:label]

      validates_max_length 50, :label
      validates_max_length 255, :description, allow_nil: true
      validates_max_length 10, :uom_code
    end

  end
end
