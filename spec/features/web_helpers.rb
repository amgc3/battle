
def sign_in_play
  visit('/')
  fill_in "Player 1", :with => "Anna"
  fill_in "Player 2", :with => "George"
  click_button "Submit"
end
