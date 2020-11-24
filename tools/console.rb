# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Jesus",10)
lifter2 = Lifter.new("Israel",20)
lifter3 = Lifter.new("Garcia",30)
lifter4 = Lifter.new("Chi",40)
lifter5 = Lifter.new("Nguyen",50)
lifter6 = Lifter.new("Duncan",60)
lifter7 = Lifter.new("Stark",70)
lifter8 = Lifter.new("Oumaima",80)

gym1 = Gym.new("24 Hour")
gym2 = Gym.new("LA Fitness")
gym3 = Gym.new("Blast")
gym4 = Gym.new("Vintage Crossfit")

mem1 = Membership.new(10)
mem2 = Membership.new(20)
mem3 = Membership.new(35)
mem4 = Membership.new(50)
mem5 = Membership.new(100)
mem6 = Membership.new(150)
mem7 = Membership.new(200)
mem8 = Membership.new(300)

mem1.lifter = lifter1
mem1.gym = gym1

mem2.lifter = lifter2
mem2.gym = gym2

mem3.lifter = lifter3
mem3.gym = gym3

mem4.lifter = lifter4
mem4.gym = gym4

mem5.lifter = lifter5
mem5.gym = gym1

mem6.lifter = lifter6
mem6.gym = gym2

mem7.lifter = lifter7
mem7.gym = gym3

mem8.lifter = lifter8
mem8.gym = gym4


binding.pry

puts "Gains!"
