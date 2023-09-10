(1..10).each do |n|
  puts n
end

(1..10).each { |n| puts n }

(1..10).each(&method(:puts))
