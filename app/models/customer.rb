class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, :phone_number, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
  end
end
