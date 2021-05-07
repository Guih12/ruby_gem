require 'string_problems'

RSpec.describe StringProblems do
  let(:string_problems) {StringProblems.new }
  
  context "testing calculated characters" do
    response = {upper: 5, down: 8, number: 4,special: 2}
    string = '#GeeKs01fOr@gEEks07'
    it "return result quantity caracters: upper, down, number and special" do
      expect(string_problems.count_characters(string)).to eq(response) 
    end
  end
end