require 'spec_helper'

feature 'playing a game' do
    PLAY_PILL = 221563
    before do
        visit '/'
        fill_in 'name', with: 'Rhi'
        click_button 'Submit'
    end   
    scenario 'see options' do
        expect(page).to have_button 'Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end    
    scenario 'chooses a shape' do
        click_button 'Rock'
        expect(page).to have_content "rock"
    end
     scenario 'game chooses Rock' do
        click_button 'Rock'

        message - find(:css, "#computer").text.strip

        expect(possible_options).to include message
    end

    scenario 'game chooses a random option' do
        srand(PLAY_PILL)
        click_button 'Rock'
        expect(page).to have_content 'Computer chooses Scissors'
    end
    scenario 'I win' do
        srand(PLAY_PILL)
        click_button 'Rock'
        expect(page).to have_content "You win!"

    def  possible_options
        [:rock, :paper, :scissors].map { |shape| "Cbot #{shape.to_s.capitalize}" }
    end
end
end