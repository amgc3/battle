feature "Attacking" do

#   scenario 'attack player 2'do
#   sign_in_play
#   click_link 'Attack'
#   expect(page).to have_content "Anna attacked George"
# end

  scenario 'reduce player2 HP by 10' do
    sign_in_play
    click_link 'Attack'
    expect(page).not_to have_content "George: 60HP"
    expect(page).to have_content "George: 50HP"
  end
end
