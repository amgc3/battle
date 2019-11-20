feature "Attacking" do
  scenario 'attack player 2'do
  sign_in_play
  click_link 'Attack'
  expect(page).to have_content "Anna attacked George"
end
end
