def get_first_name_of_season_winner(data, season)
  season_winner = ''
  data[season].each do |attribute|
    if attribute['status'] == 'Winner'
      season_winner = attribute['name'].split
    end
  end
  season_winner[0].to_s
end

def get_contestant_name(data, occupation)
  contestant_name = ''
  data.each do |season, attributes|
    attributes.each do |attribute|
      if attribute['occupation'] == occupation
        contestant_name = attribute['name']
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, attributes|
    attributes.each do |attribute|
      if attribute['hometown'] == hometown
        counter += 1 
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  contestant = []
  data.each do |season, attributes|
    attributes.each do |attribute|
      if attribute['hometown'] == hometown
        contestant << attribute['occupation']
      end
    end
  end
  contestant[0].to_s
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |attributes|
    ages << attributes['age'].to_i
  end
  average = ages.sum(0.0) / ages.size 
  average.round
end