# frozen_string_literal: true

module Models
  class PartyRel < Sequel::Model

    one_to_many :parties
    one_to_many :parties, key: :root_party_id, primary_key: :party_id
    one_to_many :parties, key: :parent_party_id, primary_key: :party_id

    def validate
      super
      validates_presence [
        :label, 
        :level_nbr, 
        :seq_nbr
      ]

      validates_max_length 50, :label
      validates_max_length 255, :description, allow_nil: true

      validates_type Integer, :level_nbr
      validates_type Integer, :seq_nbr
    end

  end
end
