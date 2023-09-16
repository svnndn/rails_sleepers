require_relative 'human'
require_relative 'raspberry'
require_relative 'raspberry_bush'


puts "Hello, you got into the gardener simulator! Enter your name and we'll start the game:"
name = gets.chomp
puts "Cool name, #{name}! Now enter the number of berries on the bush that you will take care of:"
amount = gets.chomp
while amount.empty? or amount == "0"
  puts "You can't take care of a bush on which nothing will grow, it's useless in this game..."
  amount = gets.chomp
end
kustik = RaspberryBush.new(amount.to_i)
gardener = Human.new(name, kustik)
puts "Great, let's get started, gardener #{name}! Enter the numbers for the following actions:
1. Useful tips for caring for raspberry bushes.
2. Water the bushes.
3. Fertilize the raspberry bush.
4. Pruning and shaping the bush.
5. Harvesting."

while !kustik.is_empty?
  action = gets.chomp.to_i
  case action
  when 1
    Human.knowledge_base
  when 2, 3, 4
    gardener.work!
  when 5
    gardener.harvest
  else
    puts "Unfortunately, there is no such thing in the game, please follow the instructions."
  end
end
