require '../lib/hw1.rb'

describe 'Ruby homework part 2' do

  describe "#max_sum_of_2" do
    it "should be defined" do
      expect { max_sum_of_2([1,2,3], [1,2,3]) }.not_to raise_error
    end
    it 'the first array has the max' do
      expect(max_sum_of_2([2, 3, 4], [1, 2, 3])).to eq(9)
    end
    it 'the second array has the max' do
      expect(max_sum_of_2([0, 1, 4], [12, 2, 3])).to eq(17)
    end
    it 'should return 0 when max are equal' do
      expect(max_sum_of_2([1,1,1], [3])).to be_zero
    end
  end
  
  describe "#word_frequency" do
    it "should be defined" do
      expect { word_frequency(['Ruby']) }.not_to raise_error
    end
    it 'should return the most frequently word' do
      expect(word_frequency(['Ruby', 'java', 'ruby', 'rails', 'Python'])).to eq('ruby')
    end
    it 'should return the most frequently word when are equal' do
      expect(word_frequency(['Ruby', 'java', 'ruby', 'python', 'Python'])).not_to include("java")
    end
  end
end