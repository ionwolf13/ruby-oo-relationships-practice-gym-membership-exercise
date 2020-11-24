class Membership
  
  attr_accessor :gym, :lifter
  attr_reader :cost

  @@all_memberships = []

  def initialize(cost)
    @cost = cost
    @gym
    @lifter
    self.class.all << self
  end

  def self.all
    @@all_memberships
  end
end
