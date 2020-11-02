require 'Computer'

describe Computer do    
  subject(:computer) {described_class.new}

  describe '#shape' do
    it 'requires a random shape' do
      expect{Computer::SHAPES}.to include computer.shape
    end
  end
end