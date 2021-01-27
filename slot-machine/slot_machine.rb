class SlotMachine
  def initialize(reel1, reel2, reel3)
    @reel1 = reel1
    @reel2 = reel2
    @reel3 = reel3
  end

  def score
    reels = [@reel1, @reel2, @reel3]
    return 0 unless @reel1 == @reel2 || @reel1 == @reel3 || @reel2 == @reel3

    return 50 if reels.count('joker') == 3
    return 40 if reels.count('star') == 3
    return 30 if reels.count('bell') == 3
    return 20 if reels.count('seven') == 3
    return 10 if reels.count('cherry') == 3
  end
end
