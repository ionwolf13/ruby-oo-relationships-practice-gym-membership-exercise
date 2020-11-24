class Lifter
  attr_reader :name, :lift_total

  @@all_lifters = []

  def initialize(name, lift_total)
      @name = name
      @lift_total = lift_total
      self.class.all << self
  end

  def self.all
     @@all_lifters
  end

  def lifter_memberships
      memberships = []
      Membership.all.each do |membership|
          if membership.lifter == self
            memberships << membership
          end
      end
      memberships
  end

  def lifter_gyms
      gyms = []
      self.lifter_memberships.each do |membership|
          gyms << membership.gym
      end
      gyms
  end

  def self.average_total_lift
      total = 0
      self.all.each do |lifter|
        total += lifter.lift_total
      end
      total
  end

  def total_membership_cost
      total = 0      
      self.lifter_memberships.each do |membership|
        total += membership.cost
      end
      total
  end

  def new_membership(gym,cost)
    new_member = Membership.new(cost)
    new_member.gym = gym
    new_member.lifter = self
  end

end

