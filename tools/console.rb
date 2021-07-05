# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("l1", "l2", "l3")
l2 = Lifter.new("l4", "l5", "l6")
l3 = Lifter.new("l7", "l8", "l9")

g1 = Gym.new("G1")
g2 = Gym.new("G2")
g3 = Gym.new("G3")

m1 = Membership.new("G1", "G2", "G3")
m2 = Membership.new("G4", "G5", "G6")
m3 = Membership.new("G7", "G7", "G9")

binding.pry

puts "Gains!"
