require 'string_problems'

RSpec.describe DateProblems do
  let(:string_problems) {StringProblems.new }
  
  context "testing calculated characters" do
    it "return result quantity caracters: upper, down, number and special" do
      expect(string_problems).to eq(response) 
    end
  end
end