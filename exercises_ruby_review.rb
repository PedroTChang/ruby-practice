puts "What is your favorite food?"
# food = gets.chomp
foods = []
#1.1
index = 0
while index < 5
  foods << gets.chomp
  index = index + 1
end
#1.2
index_2 = 0
while index_2 < foods.length
  puts "I love " + foods[index_2]
  index_2 += 1
end
