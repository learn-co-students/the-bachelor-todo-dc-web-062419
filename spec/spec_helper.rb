require_relative "../lib/bachelor.rb"
require 'json'
  
RSpec.configure do |config|

end

def get_contestant_name(hash, occupation)
  hash.each do |season, contestants|
    contestants.each do |hash|
      hash[:]
  
end 