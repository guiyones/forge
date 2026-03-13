class HomeController < ApplicationController
  def index
    @active_challenges = Current.user.challenges.where(status: "active").order(created_at: :desc)
    @unlocked_rewards = Current.user.rewards.where(status: "unlocked").includes(:challenge)
  end
end
