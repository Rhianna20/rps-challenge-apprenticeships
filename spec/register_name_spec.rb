require 'Player'


feature 'register name' do
  scenario 'register name' do
    visit('/')  
    fill_in :player1, with: Player1.new
    click_button 'submit'
    expect(page).to have_content Player1.new 
  end
end

feature 'greet player' do
    scenario 'greet player' do
        visit('/play_form')
       expect(page).to have_content ""