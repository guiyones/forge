class Reward < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  belongs_to :quest, optional: true

  validates :description, presence: true
  validates :status, inclusion: { in: %w[locked unlocked redeemed] }

  before_validation :set_defaults, on: :create

  def locked?
    status == "locked"
  end

  def unlocked?
    status == "unlocked"
  end

  def redeemed?
    status == "redeemed"
  end

  def unlock! 
    update!(status: "unlocked")
  end

  def redeem!
    update!(status: "redeemed", completed_at: Time.current)
  end

  private

  def set_defaults
    self.status ||= "locked"
  end
end
