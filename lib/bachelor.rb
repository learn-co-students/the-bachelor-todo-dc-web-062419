def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    contestants.each do |attribute, value|
      if value == "Winner"
        full_name = contestants["name"]
        return full_name.split(" ").first
      end
    end
  end
  

end

def get_contestant_name(data, occupation)
  data.each do |season,array|
    array.each do |contestants|
      contestants.each do |person,info|
        if info == occupation
          return contestants["name"]
        end
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  list = []
  data.each do |season,array|
    array.each do |contestants|
      contestants.each do |person,info|
        if info == hometown
          list << contestants["name"]
        end
      end
    end
  end
  final_count = list.length

end

def get_occupation(data, hometown)
  list = []
  data.each do |season,array|
    array.each do |contestants|
      contestants.each do |person,info|
        if info == hometown
          list << contestants["occupation"]
        end
      end
    end
  end
  return list[0].to_s
end

def get_average_age_for_season(data, season)
  sum = 0
  count = 0
  data[season].each do |contestants|
    contestants.each do |k,v|
      if k == "age"
        age_int = v.to_f
        sum += age_int
        count += 1
      end
    end
  end
  answer = sum / count
  return answer.round


end
