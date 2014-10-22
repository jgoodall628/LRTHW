
def start(items = [])
  if items.include?("sword")
    puts "There are four doors to choose from."
    puts "1. Open door 1"
    puts "2. Open door 2"
    puts "3. Open door 3"
    puts "4. Open door 4"
  else
    puts "You wake up in a room with 4 doors."
    puts "There is a sword being clutched by a skeleton in the corner."
    puts "What do you do?"
    puts "1. Open door 1"
    puts "2. Open door 2"
    puts "3. Open door 3"
    puts "4. Open door 4"
    puts "5. Grab the sword"
  end
  puts "> "
  
  choice = gets.chomp.to_i
  if choice == 1
    one(items)
  elsif choice ==2
    two(items)
  elsif choice ==3
    three(items)
  elsif choice ==4
    four(items)
  elsif choice ==5
    
    items.push("sword")
    five(items)
  else
    die("The skeleton awakes and stabs you.")
  end
end
def die(msg)
  puts msg
  puts "You lose!"
  exit(0)
end
def one(items)
  puts "There are spikes above you that being to fall."
  puts "What do you do?"
  puts "1. Turn back the way you came."
  puts "2. Search the room for an escape."
   choice = gets.chomp.to_i
  if choice == 1
    start(items)
  elsif choice ==2
    die("You were crushed by the spikes")
  elsif choice ==3
    if items.include?("sword")
      puts "As the spikes close in on you you realize you can use the sword to hold the spikes up."
      puts "You are able to squeeze around the spikes and find a golden neckless sitting on top."
      puts "You return to the room you started in."
      items.push("necklace")
      start(items)
    else
      die("You were crushed by the spikes")
    end
  end
end
def two(items)
  puts "You arrive in a maze full of mirrors."
  puts "What do you do?"
  puts "1. Return to the original room"
  puts "2. Traverse the maze."
  choice = gets.chomp.to_i
  
  if choice == 1
    start(items)
  elsif choice ==2
    maze(items)
  else
      die("The mirrors drive you insane.")
  end
    
end
def maze(items)
  if items.include?("necklace")
    "You notice your reflections are wearing the golden necklace."
    puts "1. Put on necklace"
    puts "2. Continue walking through maze."
    choice = gets.chomp.to_i
    if choice == 1
      win("You are able to walk through the mirrors. You arrive on a beautiful beach.")
    else
      die("Your reflections come alive and eat you.")
    end
  else
    die("Your reflections come alive and eat you.")
  end
  
end
def three(items)
  win("You are teleported to a beautiful beach!")
end
def four(items)
  die("The room is a portal to the void. You are lost in darkness.")
end
def five(items)
  puts "The skeleton gasps as you take the sword, points towards door 1 and falls back to the ground."
  start(items)
end
def win(msg)
  puts msg
  puts "You win!"
  exit(0)
end
start()