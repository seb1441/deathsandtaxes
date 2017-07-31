class StaticPagesController < ApplicationController
  def home

  end

  def members
    @users = User.all.order('character_name ASC')
    Time.zone = "Eastern Time (US & Canada)"
  end

  def farming
    @users = User.all.order('character_name DESC')
  end
end
