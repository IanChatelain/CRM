class Customer < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
  end
end
