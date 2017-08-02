class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!


  # # skip_before_action :authenticate_user!, only: [:index]
  #
  before_action :record_user_activity

  protected

  def check_recruit
    if current_user
      if current_user.rank == "Recruit"
        redirect_to root_path, :flash => {:alert => current_user.rank + "Vous devez être membre pour avoir accès au site!"}
      end
    end
  end

  def record_user_activity
    if current_user
      current_user.touch :last_active_at
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:character_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:character_name,
      :head,
      :armor,
      :shoes,
      :mainhand,
      :offhand,
      :potion,
      :food,
      :crop,
      :herb,
      :animal,
      :wood,
      :fiber,
      :stone,
      :leather,
      :ore,
      :woodaxe,
      :stonehammer,
      :sickle,
      :skinningknife,
      :pickaxe,
      :clothhead,
      :clotharmor,
      :clothshoes,
      :leatherhead,
      :leatherarmor,
      :leathershoes,
      :platehead,
      :platearmor,
      :plateshoes,
      :wepfire,
      :wepholy,
      :weparcane,
      :wepfrost,
      :wepcursed,
      :weptome,
      :wepbow,
      :wepspear,
      :wepnaturestaff,
      :wepdagger,
      :wepquarterstaff,
      :weptorch,
      :wepsword,
      :wepbattleaxe,
      :wephammer,
      :wepmace,
      :wepcrossbow,
      :wepshield,
      :avitempower,
      :reaver,
      :adventurer
      ])
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
      "Adept's Stalker Hood",
      "T5",
      "Expert's Assassin Hood",
      "Expert's Cleric Cowl",
      "Expert's Demon Helmet",
      "Expert's Druid Cowl",
      "Expert's Fiend Cowl",
      "Expert's Graveguard Helmet",
      "Expert's Guardian Helmet",
      "Expert's Harvester Cap",
      "Expert's Hellion Hood",
      "Expert's Hunter Hood",
      "Expert's Knight Helmet",
      "Expert's Lumberjack Cap",
      "Expert's Mage Cowl",
      "Expert's Mercenary Hood",
      "Expert's Miner Cap",
      "Expert's Quarrier Cap",
      "Expert's Royal Cowl",
      "Expert's Royal Helmet",
      "Expert's Royal Hood",
      "Expert's Scholar Cowl",
      "Expert's Skinner Cap",
      "Expert's Soldier Helmet",
      "Expert's Stalker Hood",
      "T6",
      "Master's Assassin Hood",
      "Master's Cleric Cowl",
      "Master's Demon Helmet",
      "Master's Druid Cowl",
      "Master's Fiend Cowl",
      "Master's Graveguard Helmet",
      "Master's Guardian Helmet",
      "Master's Harvester Cap",
      "Master's Hellion Hood",
      "Master's Hunter Hood",
      "Master's Knight Helmet",
      "Master's Lumberjack Cap",
      "Master's Mage Cowl",
      "Master's Mercenary Hood",
      "Master's Miner Cap",
      "Master's Quarrier Cap",
      "Master's Royal Cowl",
      "Master's Royal Helmet",
      "Master's Royal Hood",
      "Master's Scholar Cowl",
      "Master's Skinner Cap",
      "Master's Soldier Helmet",
      "Master's Stalker Hood",
      "T7",
      "Grandmaster's Assassin Hood",
      "Grandmaster's Cleric Cowl",
      "Grandmaster's Demon Helmet",
      "Grandmaster's Druid Cowl",
      "Grandmaster's Fiend Cowl",
      "Grandmaster's Graveguard Helmet",
      "Grandmaster's Guardian Helmet",
      "Grandmaster's Harvester Cap",
      "Grandmaster's Hellion Hood",
      "Grandmaster's Hunter Hood",
      "Grandmaster's Knight Helmet",
      "Grandmaster's Lumberjack Cap",
      "Grandmaster's Mage Cowl",
      "Grandmaster's Mercenary Hood",
      "Grandmaster's Miner Cap",
      "Grandmaster's Quarrier Cap",
      "Grandmaster's Royal Cowl",
      "Grandmaster's Royal Helmet",
      "Grandmaster's Royal Hood",
      "Grandmaster's Scholar Cowl",
      "Grandmaster's Skinner Cap",
      "Grandmaster's Soldier Helmet",
      "Grandmaster's Stalker Hood",
      "T8",
      "Elder's Assassin Hood",
      "Elder's Cleric Cowl",
      "Elder's Demon Helmet",
      "Elder's Druid Cowl",
      "Elder's Fiend Cowl",
      "Elder's Graveguard Helmet",
      "Elder's Guardian Helmet",
      "Elder's Harvester Cap",
      "Elder's Hellion Hood",
      "Elder's Hunter Hood",
      "Elder's Knight Helmet",
      "Elder's Lumberjack Cap",
      "Elder's Mage Cowl",
      "Elder's Mercenary Hood",
      "Elder's Miner Cap",
      "Elder's Quarrier Cap",
      "Elder's Royal Cowl",
      "Elder's Royal Helmet",
      "Elder's Royal Hood",
      "Elder's Scholar Cowl",
      "Elder's Skinner Cap",
      "Elder's Soldier Helmet",
      "Elder's Stalker Hood"
    ]

    @armors = [
      "Beginner's Mercenary Jacket",
      "T2",
      "Novice's Mercenary Jacket",
      "Novice's Scholar Robe",
      "Novice's Soldier Armor",
      "Adventurer's Jacket",
      "Explorer's Armor",
      "T3",
      "Journeyman's Mercenary Jacket",
      "Journeyman's Scholar Robe",
      "Journeyman's Soldier Armor",
      "Legendary Adventurer's Armor",
      "Legendary Explorer's Armor",
      "T4",
      "Adept's Assassin Jacket",
      "Adept's Cleric Robe",
      "Adept's Demon Armor",
      "Adept's Druid Robe",
      "Adept's Fiend Robe",
      "Adept's Graveguard Armor",
      "Adept's Guardian Armor",
      "Adept's Harvester Garb",
      "Adept's Hellion Jacket",
      "Adept's Hunter Jacket",
      "Adept's Knight Armor",
      "Adept's Lumberjack Garb",
      "Adept's Mage Robe",
      "Adept's Mercenary Jacket",
      "Adept's Miner Garb",
      "Adept's Quarrier Garb",
      "Adept's Royal Armor",
      "Adept's Royal Jacket",
      "Adept's Royal Robe",
      "Adept's Scholar Robe",
      "Adept's Skinner Garb",
      "Adept's Soldier Armor",
      "Adept's Stalker Jacket",
      "T5",
      "Expert's Assassin Jacket",
      "Expert's Cleric Robe",
      "Expert's Demon Armor",
      "Expert's Druid Robe",
      "Expert's Fiend Robe",
      "Expert's Graveguard Armor",
      "Expert's Guardian Armor",
      "Expert's Harvester Garb",
      "Expert's Hellion Jacket",
      "Expert's Hunter Jacket",
      "Expert's Knight Armor",
      "Expert's Lumberjack Garb",
      "Expert's Mage Robe",
      "Expert's Mercenary Jacket",
      "Expert's Miner Garb",
      "Expert's Quarrier Garb",
      "Expert's Royal Armor",
      "Expert's Royal Jacket",
      "Expert's Royal Robe",
      "Expert's Scholar Robe",
      "Expert's Skinner Garb",
      "Expert's Soldier Armor",
      "Expert's Stalker Jacket",
      "T6",
      "Master's Assassin Jacket",
      "Master's Cleric Robe",
      "Master's Demon Armor",
      "Master's Druid Robe",
      "Master's Fiend Robe",
      "Master's Graveguard Armor",
      "Master's Guardian Armor",
      "Master's Harvester Garb",
      "Master's Hellion Jacket",
      "Master's Hunter Jacket",
      "Master's Knight Armor",
      "Master's Lumberjack Garb",
      "Master's Mage Robe",
      "Master's Mercenary Jacket",
      "Master's Miner Garb",
      "Master's Quarrier Garb",
      "Master's Royal Armor",
      "Master's Royal Jacket",
      "Master's Royal Robe",
      "Master's Scholar Robe",
      "Master's Skinner Garb",
      "Master's Soldier Armor",
      "Master's Stalker Jacket",
      "T7",
      "Grandmaster's Assassin Jacket",
      "Grandmaster's Cleric Robe",
      "Grandmaster's Demon Armor",
      "Grandmaster's Druid Robe",
      "Grandmaster's Fiend Robe",
      "Grandmaster's Graveguard Armor",
      "Grandmaster's Guardian Armor",
      "Grandmaster's Harvester Garb",
      "Grandmaster's Hellion Jacket",
      "Grandmaster's Hunter Jacket",
      "Grandmaster's Knight Armor",
      "Grandmaster's Lumberjack Garb",
      "Grandmaster's Mage Robe",
      "Grandmaster's Mercenary Jacket",
      "Grandmaster's Miner Garb",
      "Grandmaster's Quarrier Garb",
      "Grandmaster's Royal Armor",
      "Grandmaster's Royal Jacket",
      "Grandmaster's Royal Robe",
      "Grandmaster's Scholar Robe",
      "Grandmaster's Skinner Garb",
      "Grandmaster's Soldier Armor",
      "Grandmaster's Stalker Jacket",
      "T8",
      "Elder's Assassin Jacket",
      "Elder's Cleric Robe",
      "Elder's Demon Armor",
      "Elder's Druid Robe",
      "Elder's Fiend Robe",
      "Elder's Graveguard Armor",
      "Elder's Guardian Armor",
      "Elder's Harvester Garb",
      "Elder's Hellion Jacket",
      "Elder's Hunter Jacket",
      "Elder's Knight Armor",
      "Elder's Lumberjack Garb",
      "Elder's Mage Robe",
      "Elder's Mercenary Jacket",
      "Elder's Miner Garb",
      "Elder's Quarrier Garb",
      "Elder's Royal Armor",
      "Elder's Royal Jacket",
      "Elder's Royal Robe",
      "Elder's Scholar Robe",
      "Elder's Skinner Garb",
      "Elder's Soldier Armor",
      "Elder's Stalker Jacket"
    ]

    @shoes = [
      "Beginner's Mercenary Shoes",
      "T2",
      "Novice's Mercenary Shoes",
      "Novice's Scholar Sandals",
      "Novice's Soldier Boots",
      "Adventurer's Shoes",
      "Explorer's Boots",
      "T3",
      "Journeyman's Mercenary Shoes",
      "Journeyman's Scholar Sandals",
      "Journeyman's Soldier Boots",
      "Legendary Adventurer's Boots",
      "Legendary Explorer's Boots",
      "T4",
      "Adept's Assassin Shoes",
      "Adept's Cleric Sandals",
      "Adept's Demon Boots",
      "Adept's Druid Sandals",
      "Adept's Fiend Sandals",
      "Adept's Graveguard Boots",
      "Adept's Guardian Boots",
      "Adept's Harvester Workboots",
      "Adept's Hellion Shoes",
      "Adept's Hunter Shoes",
      "Adept's Knight Boots",
      "Adept's Lumberjack Workboots",
      "Adept's Mage Sandals",
      "Adept's Mercenary Shoes",
      "Adept's Miner Workboots",
      "Adept's Quarrier Workboots",
      "Adept's Royal Boots",
      "Adept's Royal Sandals",
      "Adept's Royal Shoes",
      "Adept's Scholar Sandals",
      "Adept's Skinner Workboots",
      "Adept's Soldier Boots",
      "Adept's Stalker Shoes",
      "T5",
      "Expert's Assassin Shoes",
      "Expert's Cleric Sandals",
      "Expert's Demon Boots",
      "Expert's Druid Sandals",
      "Expert's Fiend Sandals",
      "Expert's Graveguard Boots",
      "Expert's Guardian Boots",
      "Expert's Harvester Workboots",
      "Expert's Hellion Shoes",
      "Expert's Hunter Shoes",
      "Expert's Knight Boots",
      "Expert's Lumberjack Workboots",
      "Expert's Mage Sandals",
      "Expert's Mercenary Shoes",
      "Expert's Miner Workboots",
      "Expert's Quarrier Workboots",
      "Expert's Royal Boots",
      "Expert's Royal Sandals",
      "Expert's Royal Shoes",
      "Expert's Scholar Sandals",
      "Expert's Skinner Workboots",
      "Expert's Soldier Boots",
      "Expert's Stalker Shoes",
      "T6",
      "Master's Assassin Shoes",
      "Master's Cleric Sandals",
      "Master's Demon Boots",
      "Master's Druid Sandals",
      "Master's Fiend Sandals",
      "Master's Graveguard Boots",
      "Master's Guardian Boots",
      "Master's Harvester Workboots",
      "Master's Hellion Shoes",
      "Master's Hunter Shoes",
      "Master's Knight Boots",
      "Master's Lumberjack Workboots",
      "Master's Mage Sandals",
      "Master's Mercenary Shoes",
      "Master's Miner Workboots",
      "Master's Quarrier Workboots",
      "Master's Royal Boots",
      "Master's Royal Sandals",
      "Master's Royal Shoes",
      "Master's Scholar Sandals",
      "Master's Skinner Workboots",
      "Master's Soldier Boots",
      "Master's Stalker Shoes",
      "T7",
      "Grandmaster's Assassin Shoes",
      "Grandmaster's Cleric Sandals",
      "Grandmaster's Demon Boots",
      "Grandmaster's Druid Sandals",
      "Grandmaster's Fiend Sandals",
      "Grandmaster's Graveguard Boots",
      "Grandmaster's Guardian Boots",
      "Grandmaster's Harvester Workboots",
      "Grandmaster's Hellion Shoes",
      "Grandmaster's Hunter Shoes",
      "Grandmaster's Knight Boots",
      "Grandmaster's Lumberjack Workboots",
      "Grandmaster's Mage Sandals",
      "Grandmaster's Mercenary Shoes",
      "Grandmaster's Miner Workboots",
      "Grandmaster's Quarrier Workboots",
      "Grandmaster's Royal Boots",
      "Grandmaster's Royal Sandals",
      "Grandmaster's Royal Shoes",
      "Grandmaster's Scholar Sandals",
      "Grandmaster's Skinner Workboots",
      "Grandmaster's Soldier Boots",
      "Grandmaster's Stalker Shoes",
      "T8",
      "Elder's Assassin Shoes",
      "Elder's Cleric Sandals",
      "Elder's Demon Boots",
      "Elder's Druid Sandals",
      "Elder's Fiend Sandals",
      "Elder's Graveguard Boots",
      "Elder's Guardian Boots",
      "Elder's Harvester Workboots",
      "Elder's Hellion Shoes",
      "Elder's Hunter Shoes",
      "Elder's Knight Boots",
      "Elder's Lumberjack Workboots",
      "Elder's Mage Sandals",
      "Elder's Mercenary Shoes",
      "Elder's Miner Workboots",
      "Elder's Quarrier Workboots",
      "Elder's Royal Boots",
      "Elder's Royal Sandals",
      "Elder's Royal Shoes",
      "Elder's Scholar Sandals",
      "Elder's Skinner Workboots",
      "Elder's Soldier Boots",
      "Elder's Stalker Shoes"
    ]

    @weapons = [
      "Beginner's Broadsword",
      "T2",
      "Novice's Bow",
      "Novice's Broadsword",
      "Novice's Fire Staff",
      "T3",
      "Journeyman's Arcane Staff",
      "Journeyman's Battleaxe",
      "Journeyman's Bow",
      "Journeyman's Broadsword",
      "Journeyman's Crossbow",
      "Journeyman's Cursed Staff",
      "Journeyman's Dagger",
      "Journeyman's Fire Staff",
      "Journeyman's Frost Staff",
      "Journeyman's Hammer",
      "Journeyman's Holy Staff",
      "Journeyman's Mace",
      "Journeyman's Nature Staff",
      "Journeyman's Quarterstaff",
      "Journeyman's Spear",
      "T4",
      "Adept's Arcane Staff",
      "Adept's Battleaxe",
      "Adept's Bedrock Mace",
      "Adept's Black Hands",
      "Adept's Black Monk Stave",
      "Adept's Blight Staff",
      "Adept's Bloodletter",
      "Adept's Boltcasters",
      "Adept's Bow",
      "Adept's Brimstone Staff",
      "Adept's Broadsword",
      "Adept's Carrioncaller",
      "Adept's Carving Sword",
      "Adept's Clarent Blade",
      "Adept's Claws",
      "Adept's Claymore",
      "Adept's Crossbow",
      "Adept's Cursed Skull",
      "Adept's Cursed Staff",
      "Adept's Dagger",
      "Adept's Dagger Pair",
      "Adept's Demonic Staff",
      "Adept's Divine Staff",
      "Adept's Double Bladed Staff",
      "Adept's Druidic Staff",
      "Adept's Dual Swords",
      "Adept's Enigmatic Staff",
      "Adept's Fallen Staff",
      "Adept's Fire Staff",
      "Adept's Forge Hammers",
      "Adept's Frost Staff",
      "Adept's Glacial Staff",
      "Adept's Glaive",
      "Adept's Great Arcane Staff",
      "Adept's Great Cursed Staff",
      "Adept's Great Fire Staff",
      "Adept's Great Frost Staff",
      "Adept's Great Hammer",
      "Adept's Great Holy Staff",
      "Adept's Great Nature Staff",
      "Adept's Greataxe",
      "Adept's Halberd",
      "Adept's Hammer",
      "Adept's Heavy Crossbow",
      "Adept's Heavy Mace",
      "Adept's Heron Spear",
      "Adept's Hoarfrost Staff",
      "Adept's Holy Staff",
      "Adept's Icicle Staff",
      "Adept's Incubus Mace",
      "Adept's Infernal Scythe",
      "Adept's Infernal Staff",
      "Adept's Iron-clad Staff",
      "Adept's Lifecurse Staff",
      "Adept's Lifetouch Staff",
      "Adept's Light Crossbow",
      "Adept's Longbow",
      "Adept's Mace",
      "Adept's Morning Star",
      "Adept's Nature Staff",
      "Adept's Occult Staff",
      "Adept's Pike",
      "Adept's Polehammer",
      "Adept's Quarterstaff",
      "Adept's Soulscythe",
      "Adept's Spear",
      "Adept's Spirithunter",
      "Adept's Tombhammer",
      "Adept's Wailing Bow",
      "Adept's Warbow",
      "Adept's Weeping Repeater",
      "Adept's Whispering Bow",
      "Adept's Wild Staff",
      "Adept's Wildfire Staff",
      "Adept's Witchwork Staff",
      "T5",
      "Expert's Arcane Staff",
      "Expert's Battleaxe",
      "Expert's Bedrock Mace",
      "Expert's Black Hands",
      "Expert's Black Monk Stave",
      "Expert's Blight Staff",
      "Expert's Bloodletter",
      "Expert's Boltcasters",
      "Expert's Bow",
      "Expert's Brimstone Staff",
      "Expert's Broadsword",
      "Expert's Carrioncaller",
      "Expert's Carving Sword",
      "Expert's Clarent Blade",
      "Expert's Claws",
      "Expert's Claymore",
      "Expert's Crossbow",
      "Expert's Cursed Skull",
      "Expert's Cursed Staff",
      "Expert's Dagger",
      "Expert's Dagger Pair",
      "Expert's Demonic Staff",
      "Expert's Divine Staff",
      "Expert's Double Bladed Staff",
      "Expert's Druidic Staff",
      "Expert's Dual Swords",
      "Expert's Enigmatic Staff",
      "Expert's Fallen Staff",
      "Expert's Fire Staff",
      "Expert's Forge Hammers",
      "Expert's Frost Staff",
      "Expert's Glacial Staff",
      "Expert's Glaive",
      "Expert's Great Arcane Staff",
      "Expert's Great Cursed Staff",
      "Expert's Great Fire Staff",
      "Expert's Great Frost Staff",
      "Expert's Great Hammer",
      "Expert's Great Holy Staff",
      "Expert's Great Nature Staff",
      "Expert's Greataxe",
      "Expert's Halberd",
      "Expert's Hammer",
      "Expert's Heavy Crossbow",
      "Expert's Heavy Mace",
      "Expert's Heron Spear",
      "Expert's Hoarfrost Staff",
      "Expert's Holy Staff",
      "Expert's Icicle Staff",
      "Expert's Incubus Mace",
      "Expert's Infernal Scythe",
      "Expert's Infernal Staff",
      "Expert's Iron-clad Staff",
      "Expert's Lifecurse Staff",
      "Expert's Lifetouch Staff",
      "Expert's Light Crossbow",
      "Expert's Longbow",
      "Expert's Mace",
      "Expert's Morning Star",
      "Expert's Nature Staff",
      "Expert's Occult Staff",
      "Expert's Pike",
      "Expert's Polehammer",
      "Expert's Quarterstaff",
      "Expert's Soulscythe",
      "Expert's Spear",
      "Expert's Spirithunter",
      "Expert's Tombhammer",
      "Expert's Wailing Bow",
      "Expert's Warbow",
      "Expert's Weeping Repeater",
      "Expert's Whispering Bow",
      "Expert's Wild Staff",
      "Expert's Wildfire Staff",
      "Expert's Witchwork Staff",
      "T6",
      "Master's Arcane Staff",
      "Master's Battleaxe",
      "Master's Bedrock Mace",
      "Master's Black Hands",
      "Master's Black Monk Stave",
      "Master's Blight Staff",
      "Master's Bloodletter",
      "Master's Boltcasters",
      "Master's Bow",
      "Master's Brimstone Staff",
      "Master's Broadsword",
      "Master's Carrioncaller",
      "Master's Carving Sword",
      "Master's Clarent Blade",
      "Master's Claws",
      "Master's Claymore",
      "Master's Crossbow",
      "Master's Cursed Skull",
      "Master's Cursed Staff",
      "Master's Dagger",
      "Master's Dagger Pair",
      "Master's Demonic Staff",
      "Master's Divine Staff",
      "Master's Double Bladed Staff",
      "Master's Druidic Staff",
      "Master's Dual Swords",
      "Master's Enigmatic Staff",
      "Master's Fallen Staff",
      "Master's Fire Staff",
      "Master's Forge Hammers",
      "Master's Frost Staff",
      "Master's Glacial Staff",
      "Master's Glaive",
      "Master's Great Arcane Staff",
      "Master's Great Cursed Staff",
      "Master's Great Fire Staff",
      "Master's Great Frost Staff",
      "Master's Great Hammer",
      "Master's Great Holy Staff",
      "Master's Great Nature Staff",
      "Master's Greataxe",
      "Master's Halberd",
      "Master's Hammer",
      "Master's Heavy Crossbow",
      "Master's Heavy Mace",
      "Master's Heron Spear",
      "Master's Hoarfrost Staff",
      "Master's Holy Staff",
      "Master's Icicle Staff",
      "Master's Incubus Mace",
      "Master's Infernal Scythe",
      "Master's Infernal Staff",
      "Master's Iron-clad Staff",
      "Master's Lifecurse Staff",
      "Master's Lifetouch Staff",
      "Master's Light Crossbow",
      "Master's Longbow",
      "Master's Mace",
      "Master's Morning Star",
      "Master's Nature Staff",
      "Master's Occult Staff",
      "Master's Pike",
      "Master's Polehammer",
      "Master's Quarterstaff",
      "Master's Soulscythe",
      "Master's Spear",
      "Master's Spirithunter",
      "Master's Tombhammer",
      "Master's Wailing Bow",
      "Master's Warbow",
      "Master's Weeping Repeater",
      "Master's Whispering Bow",
      "Master's Wild Staff",
      "Master's Wildfire Staff",
      "Master's Witchwork Staff",
      "T7",
      "Grandmaster's Arcane Staff",
      "Grandmaster's Battleaxe",
      "Grandmaster's Bedrock Mace",
      "Grandmaster's Black Hands",
      "Grandmaster's Black Monk Stave",
      "Grandmaster's Blight Staff",
      "Grandmaster's Bloodletter",
      "Grandmaster's Boltcasters",
      "Grandmaster's Bow",
      "Grandmaster's Brimstone Staff",
      "Grandmaster's Broadsword",
      "Grandmaster's Carrioncaller",
      "Grandmaster's Carving Sword",
      "Grandmaster's Clarent Blade",
      "Grandmaster's Claws",
      "Grandmaster's Claymore",
      "Grandmaster's Crossbow",
      "Grandmaster's Cursed Skull",
      "Grandmaster's Cursed Staff",
      "Grandmaster's Dagger",
      "Grandmaster's Dagger Pair",
      "Grandmaster's Demonic Staff",
      "Grandmaster's Divine Staff",
      "Grandmaster's Double Bladed Staff",
      "Grandmaster's Druidic Staff",
      "Grandmaster's Dual Swords",
      "Grandmaster's Enigmatic Staff",
      "Grandmaster's Fallen Staff",
      "Grandmaster's Fire Staff",
      "Grandmaster's Forge Hammers",
      "Grandmaster's Frost Staff",
      "Grandmaster's Glacial Staff",
      "Grandmaster's Glaive",
      "Grandmaster's Great Arcane Staff",
      "Grandmaster's Great Cursed Staff",
      "Grandmaster's Great Fire Staff",
      "Grandmaster's Great Frost Staff",
      "Grandmaster's Great Hammer",
      "Grandmaster's Great Holy Staff",
      "Grandmaster's Great Nature Staff",
      "Grandmaster's Greataxe",
      "Grandmaster's Halberd",
      "Grandmaster's Hammer",
      "Grandmaster's Heavy Crossbow",
      "Grandmaster's Heavy Mace",
      "Grandmaster's Heron Spear",
      "Grandmaster's Hoarfrost Staff",
      "Grandmaster's Holy Staff",
      "Grandmaster's Icicle Staff",
      "Grandmaster's Incubus Mace",
      "Grandmaster's Infernal Scythe",
      "Grandmaster's Infernal Staff",
      "Grandmaster's Iron-clad Staff",
      "Grandmaster's Lifecurse Staff",
      "Grandmaster's Lifetouch Staff",
      "Grandmaster's Light Crossbow",
      "Grandmaster's Longbow",
      "Grandmaster's Mace",
      "Grandmaster's Morning Star",
      "Grandmaster's Nature Staff",
      "Grandmaster's Occult Staff",
      "Grandmaster's Pike",
      "Grandmaster's Polehammer",
      "Grandmaster's Quarterstaff",
      "Grandmaster's Soulscythe",
      "Grandmaster's Spear",
      "Grandmaster's Spirithunter",
      "Grandmaster's Tombhammer",
      "Grandmaster's Wailing Bow",
      "Grandmaster's Warbow",
      "Grandmaster's Weeping Repeater",
      "Grandmaster's Whispering Bow",
      "Grandmaster's Wild Staff",
      "Grandmaster's Wildfire Staff",
      "Grandmaster's Witchwork Staff",
      "T8",
      "Elder's Arcane Staff",
      "Elder's Battleaxe",
      "Elder's Bedrock Mace",
      "Elder's Black Hands",
      "Elder's Black Monk Stave",
      "Elder's Blight Staff",
      "Elder's Bloodletter",
      "Elder's Boltcasters",
      "Elder's Bow",
      "Elder's Brimstone Staff",
      "Elder's Broadsword",
      "Elder's Carrioncaller",
      "Elder's Carving Sword",
      "Elder's Clarent Blade",
      "Elder's Claws",
      "Elder's Claymore",
      "Elder's Crossbow",
      "Elder's Cursed Skull",
      "Elder's Cursed Staff",
      "Elder's Dagger",
      "Elder's Dagger Pair",
      "Elder's Demonic Staff",
      "Elder's Divine Staff",
      "Elder's Double Bladed Staff",
      "Elder's Druidic Staff",
      "Elder's Dual Swords",
      "Elder's Enigmatic Staff",
      "Elder's Fallen Staff",
      "Elder's Fire Staff",
      "Elder's Forge Hammers",
      "Elder's Frost Staff",
      "Elder's Glacial Staff",
      "Elder's Glaive",
      "Elder's Great Arcane Staff",
      "Elder's Great Cursed Staff",
      "Elder's Great Fire Staff",
      "Elder's Great Frost Staff",
      "Elder's Great Hammer",
      "Elder's Great Holy Staff",
      "Elder's Great Nature Staff",
      "Elder's Halberd",
      "Elder's Hammer",
      "Elder's Heavy Crossbow",
      "Elder's Heavy Mace",
      "Elder's Heron Spear",
      "Elder's Hoarfrost Staff",
      "Elder's Holy Staff",
      "Elder's Icicle Staff",
      "Elder's Incubus Mace",
      "Elder's Infernal Scythe",
      "Elder's Infernal Staff",
      "Elder's Iron-clad Staff",
      "Elder's Lifecurse Staff",
      "Elder's Lifetouch Staff",
      "Elder's Light Crossbow",
      "Elder's Longbow",
      "Elder's Mace",
      "Elder's Morning Star",
      "Elder's Nature Staff",
      "Elder's Occult Staff",
      "Elder's Pike",
      "Elder's Polehammer",
      "Elder's Quarterstaff",
      "Elder's Soulscythe",
      "Elder's Spear",
      "Elder's Spirithunter",
      "Elder's Tombhammer",
      "Elder's Wailing Bow",
      "Elder's Warbow",
      "Elder's Weeping Repeater",
      "Elder's Whispering Bow",
      "Elder's Wild Staff",
      "Elder's Wildfire Staff",
      "Elder's Witchwork Staff",
      "The Hand of Khor"
    ]
    @offhands = [
      "Beginner's Shield",
      "T2",
      "Novice's Shield",
      "Novice's Tome of Spells",
      "T3",
      "Journeyman's Shield",
      "Journeyman's Tome of Spells",
      "Journeyman's Torch",
      "T4",
      "Adept's Caitiff Shield",
      "Adept's Eye of Secrets",
      "Adept's Leering Cane",
      "Adept's Mistcaller",
      "Adept's Muisak",
      "Adept's Sarcophagus",
      "Adept's Shield",
      "Adept's Tome of Spells",
      "Adept's Torch",
      "T5",
      "Expert's Caitiff Shield",
      "Expert's Eye of Secrets",
      "Expert's Leering Cane",
      "Expert's Mistcaller",
      "Expert's Muisak",
      "Expert's Sarcophagus",
      "Expert's Shield",
      "Expert's Tome of Spells",
      "Expert's Torch",
      "T6",
      "Master's Caitiff Shield",
      "Master's Eye of Secrets",
      "Master's Leering Cane",
      "Master's Mistcaller",
      "Master's Muisak",
      "Master's Sarcophagus",
      "Master's Shield",
      "Master's Tome of Spells",
      "Master's Torch",
      "T7",
      "Grandmaster's Caitiff Shield",
      "Grandmaster's Eye of Secrets",
      "Grandmaster's Leering Cane",
      "Grandmaster's Mistcaller",
      "Grandmaster's Muisak",
      "Grandmaster's Sarcophagus",
      "Grandmaster's Shield",
      "Grandmaster's Tome of Spells",
      "Grandmaster's Torch",
      "T8",
      "Elder's Caitiff Shield",
      "Elder's Eye of Secrets",
      "Elder's Leering Cane",
      "Elder's Mistcaller",
      "Elder's Muisak",
      "Elder's Sarcophagus",
      "Elder's Shield",
      "Elder's Tome of Spells",
      "Elder's Torch"
    ]

    @onehanded = [
      "Fire Staff",
      "Frost Staff",
      "Arcane Staff",
      "Cursed Staff",
      "Holy Staff",
      "Spear",
      "Nature Staff",
      "Dagger",
      "Broadsword",
      "Battle Axe",
      "Mace",
      "Hammer"
    ]
  end
end
