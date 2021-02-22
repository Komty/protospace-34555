class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  belongs_to :prototype
  has_many :users, dependent: :destroy
  has_many :prototypes, dependent: :destroy
  
end
