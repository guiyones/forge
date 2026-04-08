class Tag < ApplicationRecord
  has_many :challenge_tags, dependent: :destroy
  has_many :challenges, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
