# 1. Создайте класс `Human`.
# 2. Создайте метод `initialize`, внутри которого будут определены два динамических свойства:
#     1. `name` - передается аргументом, является публичным.
#     2. `plant` - принимает объект класса `RaspberryBush`, является `protected`.
# 3. Создайте метод `work!`, который заставляет дачника работать, что позволяет растению становиться более зрелым.
# 4. Создайте метод `harvest`, который проверяет, все ли плоды созрели. Если все - дачник собирает урожай. Если нет - метод печатает предупреждение что ещё рано.
# 5. Создайте статический метод `knowledge_base`, который выведет в консоль справку по садоводству (какой-либо небольшой текст на ваше усмотрение, к примеру, когда нужно сажать малину).


class Human
  def initialize(name, plant)
    @name = name
    @plant = plant
  end

  def self.knowledge_base
    puts '5 main rules of raspberry care:
    1. Regularly water raspberry bushes
    2. Fertilize raspberries for a good harvest
    3. Be sure to mulch the soil under raspberry bushes
    4. Carry out sanitary and formative pruning of raspberry bushes
    5. Treat raspberries from pests
    Pay enough attention to raspberries!'
  end

  def work!
    @plant.grow_all!
    puts "You've done a good job, keep going!"
  end

  def harvest
    if @plant.ripe_all?
      puts "You have collected all the berries from the bush!"
      plant.give_away_all!
    else
      puts "It's too early to pick berries, they are not ripe yet."
    end
  end

  public
  def name
    @name
  end

  protected
  def plant
    @plant
  end
end
