class Comment < ApplicationRecord

  validates :content, :prototype, :user, presence: true

  belongs_to :prototype
  belongs_to :user

end
