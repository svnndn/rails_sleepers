class User
  attr_reader :name

  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end

  def self.class_name
    "it's a User class :)"
  end

  def age
    Time.now.year - @birth_year
  end
end

puts User.class_name
me = User.new("Kamila", 2004)
puts me.name
puts me.age
