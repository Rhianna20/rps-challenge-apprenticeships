
feature 'enter name' do
  scenario 'enter name' do
    visit('/')
    expect(page).to have_content(:name)
  end
end
