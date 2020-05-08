class CovidCases
    include HTTParty

    base_uri 'https://coronavirus-tracker-india-covid-19.p.rapidapi.com/api'
    format :json

    def initialize
        @options = { 
            headers:  {
                 "x-rapidapi-host" => "coronavirus-tracker-india-covid-19.p.rapidapi.com",
                 "x-rapidapi-key"=> "EFWbUzikrBmshxz6iEH3fwnJjTD6p1U6ehsjsnT9Dk7k6qcg4Q"
             }  
        }
    end

    def getStatewiseSorted
        self.class.get("/getStatewiseSorted", @options)
    end

    def getStatewise
        self.class.get("/getStatewise", @options)
    end

end

stack_exchange = CovidCases.new
puts stack_exchange.getStatewise
