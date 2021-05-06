require 'date_problems'

RSpec.describe DateProblems do
  let(:date_problems) {DateProblems.new } 
  context "testing sum time" do
    time = "21:39"
    k = 43
    response = "22:22"
    it "should return sum time " do
      expect(date_problems.sum_time(time, k)).to eq(response) 
    end
  end
  
  context "testing find age" do
    let(:current_date) { 7 }
    let(:current_month) { 12 }
    let(:current_year) { 2017 }
    
    let(:birth_date) { 16 }
    let(:birth_month) { 12 }
    let(:birth_year) { 2009 }
    response = "Year: 8, months: -5, Days: 22"
    it "should return presente age " do
      expect(date_problems.find_age(current_date, current_month, current_year,
        birth_date, birth_month, birth_year)).to eq(response)   
    end
  end
  
end