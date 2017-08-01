class StaticPagesController < ApplicationController
  # before_action :is_member?
  #
  # def is_member?
  #   redirect_to new_user_session_path unless current_user.rank == "Member"
  # end

  def home

  end

  def members
    # @users = User.all.order('character_name ASC')
    ranks = ["Guild Master", "The Right Hand", "Master of Coin", "Warmaster", "Officer", "Warmaster", "Guardsman", "Member"]
    @users = User.all.sort_by &ranks.method(:index)
    Time.zone = "Eastern Time (US & Canada)"
  end

  def farming
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
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def gathering
    if params[:q]
      search_term = params[:q]
      if search_term == "SortWood"
        @users = User.all.order('wood DESC')
      elsif search_term == "SortFiber"
        @users = User.all.order('fiber DESC')
      elsif search_term == "SortStone"
        @users = User.all.order('stone DESC')
      elsif search_term == "SortLeather"
        @users = User.all.order('leather DESC')
      elsif search_term == "SortOre"
        @users = User.all.order('ore DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def toolcrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortWoodaxe"
        @users = User.all.order('woodaxe DESC')
      elsif search_term == "SortStonehammer"
        @users = User.all.order('stonehammer DESC')
      elsif search_term == "SortSickle"
        @users = User.all.order('sickle DESC')
      elsif search_term == "SortSkinningKnife"
        @users = User.all.order('skinningknife DESC')
      elsif search_term == "SortPickaxe"
        @users = User.all.order('pickaxe DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def weaponcrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortMagic"
        @users = User.all.order('weaponmagic DESC')
      elsif search_term == "SortRanged"
        @users = User.all.order('weaponranged DESC')
      elsif search_term == "SortMelee"
        @users = User.all.order('weaponmelee DESC')
      elsif search_term == "SortOffhand"
        @users = User.all.order('weaponoffhand DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def clothcrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortClothHead"
        @users = User.all.order('clothhead DESC')
      elsif search_term == "SortClothArmor"
        @users = User.all.order('clotharmor DESC')
      elsif search_term == "SortClothShoes"
        @users = User.all.order('clothshoes DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def leathercrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortLeatherHead"
        @users = User.all.order('leatherhead DESC')
      elsif search_term == "SortLeatherArmor"
        @users = User.all.order('leatherarmor DESC')
      elsif search_term == "SortLeatherShoes"
        @users = User.all.order('leathershoes DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def platecrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortPlateHead"
        @users = User.all.order('platehead DESC')
      elsif search_term == "SortPlateArmor"
        @users = User.all.order('platearmor DESC')
      elsif search_term == "SortPlateShoes"
        @users = User.all.order('plateshoes DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def mageweaponcrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortFireStaff"
        @users = User.all.order('wepfire DESC')
      elsif search_term == "SortHolyStaff"
        @users = User.all.order('wepholy DESC')
      elsif search_term == "SortArcaneStaff"
        @users = User.all.order('weparcane DESC')
      elsif search_term == "SortFrostStaff"
        @users = User.all.order('wepfrost DESC')
      elsif search_term == "SortCursedStaff"
        @users = User.all.order('wepcursed DESC')
      elsif search_term == "SortTome"
        @users = User.all.order('weptome DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def hunterweaponcrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortBow"
        @users = User.all.order('wepbow DESC')
      elsif search_term == "SortSpear"
        @users = User.all.order('wepspear DESC')
      elsif search_term == "SortNatureStaff"
        @users = User.all.order('wepnaturestaff DESC')
      elsif search_term == "SortDagger"
        @users = User.all.order('wepdagger DESC')
      elsif search_term == "SortQuarterstaff"
        @users = User.all.order('wepquarterstaff DESC')
      elsif search_term == "SortTorch"
        @users = User.all.order('weptorch DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

  def warriorweaponcrafting
    if params[:q]
      search_term = params[:q]
      if search_term == "SortSword"
        @users = User.all.order('wepbow DESC')
      elsif search_term == "SortBattleaxe"
        @users = User.all.order('wepbattleaxe DESC')
      elsif search_term == "SortHammer"
        @users = User.all.order('wephammer DESC')
      elsif search_term == "SortMace"
        @users = User.all.order('wepmace DESC')
      elsif search_term == "SortCrossbow"
        @users = User.all.order('wepcrossbow DESC')
      elsif search_term == "SortShield"
        @users = User.all.order('wepshield DESC')
      else
        @users = User.all.order('character_name ASC')
      end
    else
      @users = User.all.order('character_name ASC')
    end
  end

end
