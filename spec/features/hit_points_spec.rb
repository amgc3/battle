feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_play
    expect(page).to have_content "George: 60HP"
  end
end
