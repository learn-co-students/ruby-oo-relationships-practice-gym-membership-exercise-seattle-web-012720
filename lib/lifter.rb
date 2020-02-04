class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    self.memberships.map { |membership| membership.gym }
  end

  def self.average_lift_total
    x = self.all.map { |lifter| lifter.lift_total }
    average = (x.sum.to_f) / (x.length.to_f)
  end

  def membership_cost_total
    all_costs = self.memberships.map { |membership| membership.cost }
    all_costs.sum
  end

  def new_gym(gym, cost)
    newest = Membership.new(cost)
    newest.gym = gym
  end
end
