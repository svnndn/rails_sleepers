# 1. Вызовите справку по садоводству;
# 2. Создайте объекты классов `RaspberryBush` и `Human`;
# 3. Используя объект класса `Human`, поухаживайте за кустом с малиной;
# 4. Попробуйте собрать урожай;
# 5. Если малина еще не дозрела, продолжайте ухаживать за ней;
# 6. Соберите урожай.

require_relative 'human'
require_relative 'raspberry_bush'
require_relative 'raspberry'

if __FILE__ == $PROGRAM_NAME
  Human.knowledge_base
  kustik = RaspberryBush.new(10)
  human = Human.new("Kamila", kustik)
  while kustik.ripe_all? != true
    human.work!
  end
  human.harvest
end
