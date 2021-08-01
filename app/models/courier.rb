class Courier < ApplicationRecord
  validates :name, presence: true
   validates :email, presence: true, length: { minimum: 5 }
 end
