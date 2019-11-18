feature "Testing input from players" do
  scenario 'Display players names' do
    visit('/')
    # for=Player 1 in label
    fill_in "Player 1", :with => "Anna"
    fill_in "Player 2", :with => "George"
    click_button "Submit"
    expect(page).to have_content "Player 1 is Anna"
    expect(page).to have_content "Player 2 is George"

  end
end
