class Checkin < ApplicationRecord
  belongs_to :challenge

  validates :day_number, presence: true, uniqueness: { scope: challenge_id }
  validates :feeling, inclusion: { in: %w[hard ok easy] }, allow_nil: true

  scope :ordered, -> { order(day_number: :asc) }
end
