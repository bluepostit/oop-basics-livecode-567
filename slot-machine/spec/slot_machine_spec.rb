require_relative '../slot_machine'

def test_scenario(reels, expected_score)
  it "should return #{expected_score} for #{reels}" do
    slot_machine = SlotMachine.new(reels[0], reels[1], reels[2])
    actual_score = slot_machine.score
    expect(actual_score).to eq(expected_score)
  end
end

describe SlotMachine do
  describe '#score' do
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)
  end
end
