# require 'riot_api'

# @ra = RiotApi::API.new(:api_key => "4f77fb9e-8376-4cc4-88eb-549265d17007", :region => "na", :debug => true)
# puts @ra
# # summoner_details = ra.summoner.name("gwenhdolly")

# def search_summoner
# @ra.summoner.name("ballsakitysak")
# end

require 'unirest'

def rank_stats
@response = Unirest::get "https://teemojson.p.mashape.com/player/na/ballsakitysak/ranked_stats/season/4", 
  headers: { 
    "X-Mashape-Authorization" => "XMxE0oKP0YqjU4fVpZIC4t2kaDUrhoAx"
  }
end

def champion_stats
  @response_champ = Unirest::get "https://teemojson.p.mashape.com/datadragon/champion", 
  headers: { 
    "X-Mashape-Authorization" => "XMxE0oKP0YqjU4fVpZIC4t2kaDUrhoAx"
  }
end

def ranked_league
@response_ranked = Unirest::get "https://teemojson.p.mashape.com/player/na/dyrus/leagues", 
  headers: { 
    "X-Mashape-Authorization" => "XMxE0oKP0YqjU4fVpZIC4t2kaDUrhoAx"
  }
end

