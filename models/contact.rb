# frozen_string_literal: true

module Models
  class Contact < Sequel::Model

    many_to_one :party, key: :owner_party_id, primary_key: :party_id
    many_to_one :party, key: :party_id, primary_key: :party_id

    def validate
      super
    end

  end
end
