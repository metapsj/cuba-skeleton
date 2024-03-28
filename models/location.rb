# frozen_string_literal: true

module Models
  class Location < Sequel::Model

    many_to_one :site

    def validate
      super
      validates_presence [
        :address1,
        :city_label,
        :state_code,
        :country_code,
        :postal_code
      ]

      validates_max_length 50, :address1
      validates_max_length 50, :address2, allow_nil: true
      validates_max_length 50, :address3, allow_nil: true
      validates_max_length 50, :address4, allow_nul: true
      validates_max_length 50, :city_label
      validates_max_length 10, :state_code
      validates_max_length 10, :country_code
      validates_max_length 10, :postal_code
    end

  end
end
