class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym
  @@all = []

  def initialize(lifter, gym, cost)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end
end
