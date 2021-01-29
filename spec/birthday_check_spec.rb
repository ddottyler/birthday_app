require './lib/birthday_check.rb'

describe BirthdayCheck do 

    subject(:test) { BirthdayCheck.new("Dan", 21, "June") }

    it 'should initialize with a name' do 
        expect(test.name).to eq "Dan"
    end

    it 'should initialize with a day of birth' do 
        expect(test.birthday).to eq "21"
    end

    it 'should initialize with a month of birth' do
        expect(test.month).to eq "June"
    end
    
    it 'should countdown how many days until your birthday' do 
        expect(test.countdown).to eq 143
    end

end