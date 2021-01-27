class SlotMachineRefactored
  def initialize(reel1, reel2, reel3)
    @reel1 = reel1
    @reel2 = reel2
    @reel3 = reel3
  end

  def score
    reels = [@reel1, @reel2, @reel3]
    unique_reels = reels.uniq
    case unique_reels.count
    when 3 then 0
    when 2
      return 0 unless reels.include?('joker')

      two_of_a_kind_with_joker(reels)
    when 1 then three_of_a_kind(reels)
    end
  end

  private

  def two_of_a_kind_with_joker(reels)
    return 25 if reels.count('joker') == 2
    return 20 if reels.count('star') == 2
    return 15 if reels.count('bell') == 2
    return 10 if reels.count('seven') == 2
    return 5 if reels.count('cherry') == 2
  end

  def three_of_a_kind(reels)
    return 50 if reels.count('joker') == 3
    return 40 if reels.count('star') == 3
    return 30 if reels.count('bell') == 3
    return 20 if reels.count('seven') == 3
    return 10 if reels.count('cherry') == 3
  end
end
