=begin
![GeneralAssemb.ly](https://github.com/generalassembly/ga-ruby-on-rails-for-devs/raw/master/images/ga.png "GeneralAssemb.ly")

Back-End Web Development
--------

##MIDTERM  REQUIREMENTS

Create a command line based application that fulfills these criteria:

-  Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
-	Connects to a 3rd party api where the call varies based on what the user gives you.
-	Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
-	Push code on Github.


##GRADING
Your midterm is considered completed if it meets all requirements above. Your instructor and T.A will provide you with feedback.


API Ideas:

*	Twitter search api
=end

require 'json'
require 'rest-client'
require 'byebug'

class Country

  attr_accessor :countries

  def init
    @country = country
  end

  def process_countries(countries)
    rest_data = RestClient.get('http://restcountries.eu/rest/v1')
    countries = JSON.parse(rest_data)
  end

  def getsdata(country)
    if countries[name] = country.downcase
      puts "Name: #{country[:name]}, Capital: #{country[:capital]}, Region: #{country[:region]}"
    else
      puts "nil"
    end
  end
end

puts "What country would you like information on?"
country = gets.chomp

if country.downcase.include?('a'..'z')
country = Country.new
country.getsdata
else puts "That country does not exist."
end

