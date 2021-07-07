# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("A", 10)
l2 = Lifter.new("B", 20)
l3 = Lifter.new("C", 30)
l4 = Lifter.new("D", 40)
l5 = Lifter.new("E", 50)
l6 = Lifter.new("F", 60)

g1 = Gym.new("McDonald")
g2 = Gym.new("BurgerKing")

l1.gym_signup(g1, 10)
l2.gym_signup(g1, 10)
l3.gym_signup(g1, 10)
l4.gym_signup(g2, 20)
l5.gym_signup(g2, 20)
l6.gym_signup(g2, 20)
l1.gym_signup(g2, 20)
l2.gym_signup(g2, 20)



binding.pry

puts "Gains!"
