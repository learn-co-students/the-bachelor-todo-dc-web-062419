def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    contestants.each do |attributes, value|
      if value == "Winner"
        full_name = contestants["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |contestant, contestant_data|
        if contestant_data == occupation
          return contestants["name"]
        end
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  list_from = []
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |contestant, contestant_data|
        if contestant_data == hometown
        list_from << contestants["name"]
      end
    end
  end
end
num_from = list_from.length
end

def get_occupation(data, hometown)
  list_from = []
  data.each do |season, array|
    array.each do |contestants|
      contestants.each do |contestant, contestant_data|
        if contestant_data == hometown
        list_from << contestants["occupation"]
      end
    end
  end
end
return list_from[0].to_s
end

def get_average_age_for_season(data, season)
  age = 0
  num_cont = 0
  data[season].each do |contestants|
    age += (contestants["age"]).to_i
    num_cont += 1
  end
  avg_age = (age/num_cont.to_f).round
end
