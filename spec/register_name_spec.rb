require 'spec_helper'


feature 'register name' do
scenario 'register name' do
    visit('/')  
    fill_in :player1, with: Player1.new
    click_button 'submit'
    expect(page).to have_content Player1.new 
end
end
feature 'see options' do
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
        message = find{css, "#computer"}.text.strip


    def different_options
        {:rock, :paper, :scissors}.map { |shape| "Cbot #{shape.to_s.capitalize}" }
        end
        


    end