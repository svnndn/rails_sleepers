a = [21, 54, 107, 542, -10, 9]
max = a[0]
i = 1
while i < a.size
  if a[i]>max
    max = a[i]
  end
  i = i + 1
end
puts max

p [21, 54, 107, 542, -10, 9].min
