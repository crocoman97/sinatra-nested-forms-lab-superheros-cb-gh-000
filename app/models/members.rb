class Members 
  
  attr_accessor :name,:power,:bio
  attr_reader :all 
  @@all = []
  
  def initialize(attributes)
    attributes.each { |k,v|
      self.send("#{k}=",v) 
    }
    @@all.<<(self)
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear
    self.all.clear
  end
  
end