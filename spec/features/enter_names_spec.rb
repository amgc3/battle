feature "Testing input from players" do
  scenario 'Display players names' do
    sign_in_play
    expect(page).to have_content "Player 1 is Anna"
    expect(page).to have_content "Player 2 is George"

  end
end
