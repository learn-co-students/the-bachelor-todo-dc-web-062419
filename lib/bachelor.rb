#require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  # code here
winner = []
        data.map do |time, contestant_data|
            #binding.pry
            if time.to_s == season
               #binding.pry
              contestant_data.map do |contestant_info|
              if contestant_info.value?("Winner")
                 winner = contestant_info["name"]
                 #binding.pry
              end  
            
          end
          end 
end
 # binding.pry
  a = winner.split(" ")
      #binding.pry
  a[0]
end


def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
