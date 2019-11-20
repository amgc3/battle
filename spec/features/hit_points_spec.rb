feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit('/')
    fill_in "Player 1", :with => "Anna"
    fill_in "Player 2", :with => "George"
    click_button "Submit"

    expect(page).to have_content "George: 60HP"
  end
end
