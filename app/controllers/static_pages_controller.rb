class StaticPagesController < ApplicationController
  def home

  end

  def members
    @users = User.all
    Time.zone = "Eastern Time (US & Canada)"
  end
end
