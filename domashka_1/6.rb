class User
  attr_reader :name

  def initialize(name, birth_year)
    @name = name
    @birth_year = birth_year
  end

  def method_missing(m, *args, &block)
    "хаха метода <#{m}> нет"
  end
end

me = User.new("Kamila", 2004)
p me.name
p me.undefined_method
