# frozen_string_literal: true

module Models
  class Party < Sequel::Model

    PARTY_TYPES = %w[individual group organization]
    PARTY_NUMBER_REGEX = //

    one_to_many :user_parties
    one_to_many :party_rels
    one_to_many :party_rels, key: :root_party_id, primary_key: :party_id
    one_to_many :party_rels, key: :parent_party_id, primary_key: :party_id
    one_to_many :sites
    one_to_many :contacts, key: :owner_party_id, primary_key: :party_id
    one_to_many :contacts, key: :party_id, primary_key: :party_id
    one_to_many :invites

    def validate
      super
      validates_presence [
        :party_type_label,
        :party_number,
        :full_name
      ]

      validates_max_length 50, :party_type_label
      validates_max_length 50, :party_number
      validates_max_length 150, :full_name
      validates_max_length 50, :first_name, allow_nil: true
      validates_max_length 50, :middle_name, allow_nil: true
      validates_max_length 50, :last_name, allow_nil: true
    end

  end
end
