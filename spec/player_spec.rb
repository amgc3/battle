require 'player'

describe Player do
let(:player) {Player.new("Anna")}

describe '#name' do
  it 'returns player name' do
    expect(player.name).to eq("Anna")
  end
end

describe '#hit_points' do
  it 'returns a player hit_points' do
    expect(player.hit_points).to eq Player:: DEFAULT_HIT_POINTS
  end
end

end
