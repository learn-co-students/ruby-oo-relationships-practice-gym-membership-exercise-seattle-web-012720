# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative "../config/environment.rb"

Brad = Lifter.new("Brad", 50)
James = Lifter.new("James", 70)
Helena = Lifter.new("Helena", 90)

ymca = Gym.new("YMCA")
core = Gym.new("Core")

mem1 = Membership.new(Brad, ymca, 40)
mem2 = Membership.new(James, ymca, 50)

binding.pry

puts "Gains!"
