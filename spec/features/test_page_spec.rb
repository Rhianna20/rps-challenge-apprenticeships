feature 'enter name' do
  scenario 'enter name' do
    visit '/'
    fill_in 'name', with: 'Rhi'
    expect(page).to have_content('Rhi')
  end
end
