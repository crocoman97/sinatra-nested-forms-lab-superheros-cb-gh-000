class Team 
  
  attr_accessor :name,:motto
  attr_reader :all 
  @@all = []
  
  def initialize(attributes)
    attributes.each { |k,v|
      self.send("#{k}=",v) unless k == "members"
    }
    @@all.<<(self)
  end
  
  def self.all 
    @@all 
  end
  
end