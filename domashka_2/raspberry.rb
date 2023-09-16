# 1. Создайте класс `Raspberry`.
# 2. Создайте статическое свойство `states`, которое будет содержать все стадии созревания малины.
# 3. Создайте метод `initialize`, внутри которого будут определены два динамических `protected` свойства: 1) `index` - передается аргументом и 2) `state` - принимает первое значение из списка `states`.
# 4. Создайте метод `grow!`, который будет переводить малину на следующую стадию созревания.
# 5. Создайте метод `ripe?`, который будет проверять, что малина созрела (достигла последней стадии созревания).


class Raspberry

  def initialize(index)
    @states = ['Empty', 'Flowering', 'Green', 'Red']
    @index = index
    @state = @states[0]
  end

  def grow!
    unless @state == @states[-1]
      @state = @states[@states.index(@state) + 1]
    end
  end

  def ripe?
    return @state == @states[-1]
  end

  protected

  def index
    @index
  end

  def state
    @state
  end
end
