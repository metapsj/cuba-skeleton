# frozen_string_literal: true

module Models
  class Invite < Sequel::Model

    many_to_one :party

    def validate
      super
      validates_presence [
        :invite_type_label, 
        :invite_status_label, 
        :invite_info, 
        :location_info, 
        :site_info
      ]

      validates_max_length 50, :invite_type_label
      validates_max_length 50, :invite_status_label
    end

  end
end
