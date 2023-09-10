module ReverseName
  def not_funny_name
    @name.downcase.reverse.capitalize
  end
end

class User
  include ReverseName

  attr_reader :name

  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end
end

me = User.new("Kamila", 2004)
p me.name
p me.not_funny_name
