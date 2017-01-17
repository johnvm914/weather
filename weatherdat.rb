input = File.open('./weather.dat', File::RDONLY){|f| f.read }
array = input.lines.map(&:split)
x = 2
y = 100
day = []
temps = []
while x < 32
  day = array[x]
  temp_diff = day[1].to_i - day[2].to_i
  temps << temp_diff
  x += 1
end

x = 1
temps.each do |temp_diff|
  if temp_diff < y
    day = x
    y = temp_diff
  end
  x += 1
end

puts "The day with the smallest temperature spread is June #{day}"

