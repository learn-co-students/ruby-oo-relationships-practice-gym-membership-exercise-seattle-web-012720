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

  def memberships
    Membership.all.select{|m_obj| m_obj.gym == self}
  end

  def lifters
    self.memberships.map{|m_obj| m_obj.lifter}
  end

  def lifter_names
    self.lifters.map{|l_obj| l_obj.name}
  end

  def lift_totals
    total = 0
    self.lifters.each{|l_obj| total += l_obj.lift_total}
    total
  end

end
