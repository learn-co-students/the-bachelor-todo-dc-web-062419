require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |names|
    names.each do |key, value|
      if value == "Winner"
        name = names["name"]
        return name.split(" ")[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
 data.each do |season, value|
   value.each do |person|
     person.each do |key, v|
     if v == occupation
       return person["name"]
     end
   end 
   end 
 end 
end

def count_contestants_by_hometown(data, hometown)
  x = 0
   data.each do |season, value|
   value.each do |person|
     person.each do |key, v|
     if v == hometown
       x += 1 
     end 
   end
 end 
 end
 x
end

def get_occupation(data, hometown)
   data.each do |season, value|
   value.each do |person|
     person.each do |key, v|
     if v == hometown
       return person["occupation"]
   end
 end
 end
 end 
end

def get_average_age_for_season(data, season)
  counter = 0 
  age = 0
  data[season].each do |names|
    names.each do |key, value|
      if key == "age"
        counter += 1
        age += value.to_f
        
      end 
    end
  end
  (age/counter).round
    
end
