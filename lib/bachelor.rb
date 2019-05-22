def get_first_name_of_season_winner(data, season)

winner = ""
        data.each do |time, contestant_data|
            #binding.pry
            if time == season
               #binding.pry
              contestant_data.each do |contestant_info|
               if contestant_info["status"] == "Winner"
                 winner = contestant_info["name"]
       #          binding.pry
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

worker = ""
        data.each do |time, contestant_data|
              contestant_data.each do |contestant_info|
              if contestant_info["occupation"] == occupation
                worker = contestant_info["name"]
       
              end  
            
          end
          end 
 
worker
  
end


def count_contestants_by_hometown(data, hometown)

worker = ""
counter = 0
        data.each do |time, contestant_data|
              contestant_data.each do |contestant_info|
              if contestant_info["hometown"] == hometown
                counter += 1
              end  
            
          end
          end 
counter

end



def get_occupation(data, hometown)
  
    occupation = []

        data.each do |time, contestant_data|
              contestant_data.each do |contestant_info|
                if contestant_info["hometown"] == hometown
                  occupation.push(contestant_info["occupation"])
                end  
              end
          end 
  occupation[0]

end


def get_average_age_for_season(data, season)
 

    age = []

        data.each do |time, contestant_data|
              if time == season
              contestant_data.each do |contestant_info|
                  age.push(contestant_info["age"].to_f)
                end  
              end
          end 
  age = (age.sum/age.count).round

end
