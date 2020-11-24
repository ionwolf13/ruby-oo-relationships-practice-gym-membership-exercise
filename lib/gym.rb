class Gym

  attr_reader :name

  @@all_gyms = []

  def initialize(name)
      @name = name
      @gym
      self.class.all << self
  end

  def self.all
      @@all_gyms
  end

  def gym_memberships
      memberships = []
      Memberships.all.each do |membership|
        if membership.gym == self
          memberships << membership
        end
      end
      membership
  end

  def gym_lifters
      lifters = []
      self.gym_memberships.each do |membership|
        lifters << membership.lifter
      end
      lifters
  end

  def gym_lifter_names
      lifter_names = []
      self.gym_lifters.each do |lifter|
        lifter_names << lifter.name
      end
      lifter_names
  end

  def gym_lifter_total
    total = 0
      self.gym_lifters.each do |lifter|
        total += lifter.lift_total
      end
      total
  end

end
