
feature 'Testing infrastructure' do
  scenario 'Display content of home page' do
    visit('/')
    expect(page).to have_content('Welcome to the battle')
  end
end
