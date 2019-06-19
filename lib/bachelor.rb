require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_first_name =""
#  season_name = "season #{season.to_s}"
#  puts season_name
  data.each do |season_word, peoples|
    season_word = season_word.to_s
    if season == season_word
      peoples.each do |person|
 #       binding.pry
        if person["status"] == "Winner"
          winner_first_name = person["name"].split(" ").first
          puts winner_first_name
          return winner_first_name
        end
      end
    else
#      puts "That's not the season"
    end
  end
#  puts "The winner of #{season} was #{winner_first_name}"
#  winner_first_name
end

def get_contestant_name(data, occupation)
  doer =""
  data.each do |season_word, peoples|
      peoples.each do |person|
        #binding.pry
        if person["occupation"] == occupation
          doer = person["name"]
          puts doer
          return doer
        end
      end
  end
#  puts "The person who does #{occupation} is #{doer}"
#  doer
end

def count_contestants_by_hometown(data, hometown)
    populations = {}
    data.each do |season_word, peoples|
      peoples.each do |person|
        populations[person["hometown"]] = 0
      end
    end 
    data.each do |season_word, peoples|
      peoples.each do |person|
        populations[person["hometown"]] += 1
      end
    end  
#   binding.pry
  populations[hometown]

end

def get_occupation(data, hometown)
  thing_they_do =""
  data.each do |season_word, peoples|
      peoples.each do |person|
        #binding.pry
        if person["hometown"] == hometown
          thing_they_do = person["occupation"]
          puts thing_they_do
#            binding.pry
          return thing_they_do
          break if thing_they_do != false
        end
      end
  end
end

def get_average_age_for_season(data, season)
  ages_of_season = []
  average = 0
  data.each do |season_word, peoples|
    if season == season_word
      peoples.each do |person|
        #binding.pry
        ages_of_season << person["age"].to_f
      end
    end
  end
  i=0
  sum=0
#  ages_of_season.average
  while i < ages_of_season.length
    sum = sum + ages_of_season[i].to_f
    i+=1
 #     binding.pry
    average = (sum/i).round 
  end
  average
end






