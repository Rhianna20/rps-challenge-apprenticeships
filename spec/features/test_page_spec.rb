
feature 'enter name' do
  scenario 'enter name' do
    visit('/')
    expect(page).to have_content(:name)
  end
end
feature 'pick a weapon' do
  scenario 'pick a weapon' do
    visit('/play')
    expect(page).to have_content(:weapons)
  end
end

