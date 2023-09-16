# 1. Создайте класс `RaspberryBush`.
# 2. Определите метод `initialize`, который будет принимать в качестве аргумент количество ягод малины и на его основе будет создавать список объектов класса `Raspberry`. Данный список `raspberries` будет храниться внутри объекта куста (не внутри класса `Raspberry`!).
# 3. Создайте метод `grow_all!`, который будет переводить все объекты из списка малины на следующий этап созревания.
# 4. Создайте метод `ripe_all?`, который будет возвращать `true`, если все ягоды малины из списка стали спелыми.
# 5. Создайте метод `give_away_all!`, который будет чистить список малины после сбора урожая.


class RaspberryBush
  def initialize(amount)
    @raspberries = []
    amount.times do |i|
      raspberry = Raspberry.new(i)
      @raspberries << raspberry
    end
  end

  def grow_all!
    @raspberries.length.times do |i|
      @raspberries[i].grow!
    end
  end

  def ripe_all?
    @raspberries.all?(&:ripe?)
  end

  def give_away_all!
    @raspberries.clear
  end

  def is_empty?
    @raspberries == []
  end
end
