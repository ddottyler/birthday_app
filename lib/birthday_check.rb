require 'date'

class BirthdayCheck

    attr_reader :name, :birthday, :month, :outcome, :today

    def initialize(name, birthday, month)
        @name = name
        @birthday = birthday.to_s
        @month = month.to_s
        @today = Date.parse(Date.today.to_s)
        self.countdown
    end 

    def countdown
    end_date = Date.parse("2021-#{@month}-#{@birthday}")
    @outcome = end_date.mjd - @today.mjd
        if @outcome.negative?    
            end_date = Date.parse("2022-#{month}-#{birthday}")
            @outcome = end_date.mjd - @today.mjd 
        end 
    @outcome 
    end 
    
end