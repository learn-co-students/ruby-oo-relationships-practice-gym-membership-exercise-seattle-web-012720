class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def all_lifters
    self.all_memberships.map { |membership| membership.lifter }
  end

  def lifters_names
    all_lifters.map { |lifter| lifter.name }
  end

  def lift_total
    all_lifters.map do |lifter|
      lifter.lift_total
    end.sum
  end
end
