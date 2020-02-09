class Lifter
  attr_reader :name
  attr_accessor :lift_total
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
    Membership.all.select{|m_obj| m_obj.lifter == self}
  end

  def gyms
    memberships = Membership.all.select{|m_obj| m_obj.lifter == self}
    memberships.map{|m_obj| m_obj.gym}
  end

  def self.average_lifts
    total_lifts = 0
    Lifter.all.each{|l_obj| total_lifts += l_obj.lift_total}
    total_lifts/Lifter.all.length
  end

  def memberships_costs
    result = 0
    self.memberships.each{|m_obj| result += m_obj.cost}
    result
  end

  def gym_signup(gym, cost)
    Membership.new(cost, self, gym)
  end
  
end
