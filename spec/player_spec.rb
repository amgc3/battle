require 'player'

describe Player do
let(:player) {Player.new("Anna")}

describe '#name' do
  it 'returns player name' do
    expect(player.name).to eq("Anna")
  end
end

end
