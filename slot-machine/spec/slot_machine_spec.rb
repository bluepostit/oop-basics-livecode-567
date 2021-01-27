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
    # 3 of the same
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    # 2 jokers
    test_scenario(%w[joker joker star], 25)
    test_scenario(%w[joker joker bell], 25)
    test_scenario(%w[joker seven joker], 25)
    test_scenario(%w[cherry joker joker], 25)

    # 2 of the same + joker
    test_scenario(%w[star joker star], 20)
    test_scenario(%w[joker bell bell], 15)
    test_scenario(%w[seven joker seven], 10)
    test_scenario(%w[cherry cherry joker], 5)

    # 2 of the same + non-joker - zero score!
    test_scenario(%w[star bell star], 0)
    test_scenario(%w[seven bell bell], 0)
    test_scenario(%w[seven star seven], 0)
    test_scenario(%w[cherry cherry bell], 0)

    # All different - zero score!
    test_scenario(%w[star bell cherry], 0)
    test_scenario(%w[seven cherry bell], 0)
  end
end
