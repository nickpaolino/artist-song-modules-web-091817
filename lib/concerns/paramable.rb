module Paramable

  module InstanceMethods
    def to_param
      self.name.downcase.gsub(' ', '-')
    end
  end

  module ClassMethods
  end

end
