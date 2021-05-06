require 'date_problems'

RSpec.describe DateProblems do
  let(:date_problems) {DateProblems.new } 
  context "testing sum time" do
    time = "21:39"
    k = 43
    response = "22:22"
    it "should returnr sum time " do
      expect(date_problems.sum_time(time, k)).to eq(response) 
    end
  end
  
end