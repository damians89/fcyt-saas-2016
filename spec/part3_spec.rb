require '../lib/hw1.rb'

describe 'Ruby intro part 3' do
 describe "#FileAnalizer" do
    it "should be defined" do
      expect { FileAnalizer(["Damian"], ["gabi"],["Juan"]) }.not_to raise_error
    end
end




end