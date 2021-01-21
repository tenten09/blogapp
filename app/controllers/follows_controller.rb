class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.follow!(params[:account_id])
    redirect_to account_path(oarams[:account_id])
  end
end