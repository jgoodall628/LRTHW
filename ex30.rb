people = 30
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "Alright, let's just take the trucks."
end

if people > trucks
  puts "Alright, lets's just take the trucks."
else
  "Fine, let's stay at home then."
end