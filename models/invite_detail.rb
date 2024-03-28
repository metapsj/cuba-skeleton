# frozen_string_literal: true

module Models
  class InviteDetail < Sequel::Model

    many_to_one :invite

    def validate
      super
      validates_presence [
        :invite_detail_type_label
      ]

      validates_max_length 50, :invite_detail_type_label
    end

  end
end
