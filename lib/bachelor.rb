def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |season_number, array|
    array.each do |hash|
      if season == season_number
        if hash["status"] == "Winner"
          winner_name = hash["name"]
        end 
      end 
    end 
  end 
  winner_name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season, array|
    array.each do |hash|
      if occupation == hash["occupation"]
        contestant_name = hash["name"]
      end 
    end 
  end 
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  
  data.each do |season, array|
    array.each do |hash|
      if hometown == hash["hometown"]
        counter += 1 
      end 
    end 
  end 
  counter 
end

def get_occupation(data, hometown)
  contestants = []
  data.each do |season, array|
    array.each do |hash|
      if hometown == hash["hometown"]
        contestants << hash["occupation"]
      end 
    end 
  end 
  contestants[0]
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |season_number, array|
    array.each do |hash|
      if season == season_number
        ages << hash["age"].to_f 
      end
    end
  end 
  age_sum = ages.inject(0) {|sum, x| sum + x}
  avg = age_sum/ages.length 
  avg.round
end


# {"season 19":[
#       {
#         "name":"Ashley Iaconetti",
#         "age":"26",
#         "hometown":"Great Falls, Virginia",
#         "occupation":"Nanny/Freelance Journalist",
#         "status":""
#       },


