class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: [:index]


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:character_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:character_name])
  end

  before_action :set_items

  private
  def set_items
    # @heads = ["Beginner's Mercenary Hood", "Adventurer's Helmet", "Explorer's Hat", "Novice's Mercenary Hood", "Novice's Scholar Cowl", "Novice's Soldier Helmet", "Journeyman's Mercenary Hood" ]
    @heads = [
      "Beginner's Mercenary Hood",
      "T2",
      "Adventurer's Helmet",
      "Explorer's Hat",
      "Novice's Mercenary Hood",
      "Novice's Scholar Cowl",
      "Novice's Soldier Helmet",
      "T3",
      "Journeyman's Mercenary Hood",
      "Journeyman's Scholar Cowl",
      "Journeyman's Soldier Helmet",
      "Legendary Adventurer's Hat",
      "Legendary Explorer's Hat",
      "Uncle Frost's Hat",
      "T4",
      "Adept's Assassin Hood",
      "Adept's Cleric Cowl",
      "Adept's Demon Helmet",
      "Adept's Druid Cowl",
      "Adept's Fiend Cowl",
      "Adept's Graveguard Helmet",
      "Adept's Guardian Helmet",
      "Adept's Harvester Cap",
      "Adept's Hellion Hood",
      "Adept's Hunter Hood",
      "Adept's Knight Helmet",
      "Adept's Lumberjack Cap",
      "Adept's Mage Cowl",
      "Adept's Mercenary Hood",
      "Adept's Miner Cap",
      "Adept's Quarrier Cap",
      "Adept's Royal Cowl",
      "Adept's Royal Helmet",
      "Adept's Royal Hood",
      "Adept's Scholar Cowl",
      "Adept's Skinner Cap",
      "Adept's Soldier Helmet",
      "Adept's Stalker Hood"
    ]
  end
end
