require 'start'

describe Start do
    subject(:start) { described_class.new(options) }
    let(:options) { {"name" => "Rhi", "shape" => :rock, "computer_choice" => :rock}}

    describe '#enter_name' do
         it 'returns a player name' do
            expect(start.name).to eq "Rhi"
        end
    end
    describe '#player_shape' do
         it 'returns player shape' do
            expect(start.playerchoice).to eq :rock
        end
    end 
    describe '#computer_choice' do
      it 'returns computer choice' do
         expect(start.computer_choice).to eq :scissors

      end
    end

    context 'end game' do
        subject(:win_start) { start }
        subject(:lose_start) { described_class.new(lose_start) }
        subject(:draw_start) { described_class.new(draw_start) }

        let(:lose_options) { { "playername" => "Rhi", "computerchoice" => :rock, "computer_choice" => :paper } }
        let(:lose_options) { { "playername" => "Rhi", "computerchoice" => :rock, "computer_choice" => :rock } }
        
        describe '#win?' do
            it 'returns true if player_choice is :rock and computer_choice is :scissors' do
                 expect(win_start.win?).to eq true
            end
        end
         describe '#lose?' do
            it 'returns true if playerchoice is :rock and computer_choice is :paper' do
                expect(lose_start.lose?).to eq true
            end
         end
        describe '#draw?' do
            it 'returns true if playerchoice is :rock and computer_choice is :rock' do
                expect(draw_start.draw?).to eq true
            end 
        end

    
    
        end


    
end
