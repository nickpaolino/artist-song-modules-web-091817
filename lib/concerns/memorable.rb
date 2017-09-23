module Memorable
  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
  
  module ClassMethods
    def reset_all
      # self here refers to whatever self
      # will be when the class uses this method
      self.all.clear
    end
    def count
      self.all.count
    end
  end
end
