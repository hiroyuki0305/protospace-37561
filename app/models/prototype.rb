class Prototype < ApplicationRecord

  validates :title, :catch_copy, :concept, :image, presence: true
  
  has_one_attached :image
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  
end
