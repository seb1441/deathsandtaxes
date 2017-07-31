class StaticPagesController < ApplicationController
  def home

  end

  def members
    @users = User.all.order('character_name ASC')
    Time.zone = "Eastern Time (US & Canada)"
  end

  def farming
    @users = User.all.order('character_name DESC')
    if params[:q]
      search_term = params[:q]
      if search_term == "SortPotion"
        @users = User.all.order('potion DESC')
      elsif search_term == "SortFood"
        @users = User.all.order('food DESC')
      elsif search_term == "SortCrop"
        @users = User.all.order('crop DESC')
      elsif search_term == "SortHerb"
        @users = User.all.order('herb DESC')
      elsif search_term == "SortAnimal"
          @users = User.all.order('animal DESC')
      end
    else
      @users = User.all.order('character_name DESC')
    end
  end
end
