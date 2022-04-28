puts "What is your favorite food?"
# food = gets.chomp
foods = []

index = 0
while index < 5
  foods << gets.chomp
  index = index + 1
end
p foods
