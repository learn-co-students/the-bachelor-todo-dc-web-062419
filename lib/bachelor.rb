require "pry"

#
def get_first_name_of_season_winner(data, season)
  
  # code here
  data.each do |season_number, contestant_hash|
    if season_number == season
      contestant_hash.each do |contestant|
    #binding.pry
      if contestant["status"] == "Winner"
        return contestant["name"].split(" ").first
      end
    end
  end
end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, contestant_hash|
    contestant_hash.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
end
end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_number, contestant_hash|
    contestant_hash. each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end  
end
return counter
end

def get_occupation(data, hometown)
  contestants = []
  # code here
  data.each do |season_number, contestant_hash|
    contestant_hash.each do |contestant|
      #binding.pry
      if contestant["hometown"] == hometown
          contestants << contestant["occupation"]
      end
    end
end
return contestants.first
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  sum = 0
  #sum_array = []
  #  counter_array = []
  
  data.each do |season_number, contestant_hash|
    if season_number == season
    contestant_hash.each do |contestant|
       #sum_array << contestant["age"].to_i
      counter += 1
      sum += contestant["age"].to_i
     
end
end
end

 (sum / counter.to_f).round(0)
#binding.pry
end
