require 'player'

describe Player do
let(:player1) {Player.new("Anna")}
let(:player2) {Player.new("George")}

describe '#name' do
  it 'returns player name' do
    expect(player1.name).to eq("Anna")
  end
end

describe '#hit_points' do
  it 'returns a player hit_points' do
    expect(player1.hit_points).to eq Player:: DEFAULT_HIT_POINTS
  end
end

describe '#receive_damage' do
  it 'decreases a player hit_points after attack' do
  expect{player1.attack(player2)}.to change{player2.hit_points}.by(-10)
end
end

end
