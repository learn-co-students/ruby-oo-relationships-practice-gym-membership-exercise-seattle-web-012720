class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(lifters, lift_total, membership)
    @lifters = lifters
    @lift_total = lift_total
    @membership = membership
    @@all << self
  end

  def self.all
    @@all
  end

  


end
