class Dog < ApplicationRecord
  has_many_attached :images
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  has_one :like
end
