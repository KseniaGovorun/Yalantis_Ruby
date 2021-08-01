class Courier < ApplicationRecord
  has_many :packages
  validates :name, presence: true
   validates :email, presence: true, length: { minimum: 5 }
 end
