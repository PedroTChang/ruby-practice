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
# index_2 = 0
# while index_2 < foods.length
#   puts "I love " + foods[index_2]
#   index_2 += 1
# end
#1.3
index_3 = 0
number = 1
while index_3 < foods.length
  puts number.to_s + ". " + foods[index_3]
  number += 1
  index_3 += 1
end
