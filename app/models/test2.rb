require 'lol'

@client = Lol::Client.new "4f77fb9e-8376-4cc4-88eb-549265d17007", {region: "na"}

def champion
  @client.champion.get
end

def stats
  @client.stats
end

def ranked
@client.game.recent('gwendolly')
end

def summoner
  @client.summoner.get('ballsakitysak')
end