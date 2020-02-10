class Membership

  attr_reader :cost

  @@all = []

  def initialize(membership, cost, name)
    @membership = membership
    @cost = cost
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end
