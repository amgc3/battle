feature "Testing input from players" do
  scenario 'Display players names' do
    visit('/')
    # for=Player 1 in label
    #within(:css, '#player_names_form') do
      #player_names_form should be id attribute
      #in <form action="/names" method="post",
      #id='player_names_form'> index.erb
    fill_in "Player 1", :with => "Anna"
    fill_in "Player 2", :with => "George"
    click_button "Submit"
    expect(page).to have_content "Player 1 is Anna"
    expect(page).to have_content "Player 2 is George"

  end
end
