
# TODO: you can build your horse race program here!
run = true

# 1. Print welcome and the horses names
puts "Hello kind Sir."
# Get the value for the bet
puts "How large will your bet be sir?"
# Get the value of the deposit
balance = gets.chomp.to_i

new_balance = balance

while run
puts "Wise choice sire! At the moment you have #{new_balance}$ in this fine establishment"
puts  "Today we have the following horses. Which one is your choice? Please write the name and not the number"
puts "Lucky , Milkshake , Dune , Bond , Moneypenny"
def shuffle
    sort_by { rand }
end
horses = ["Lucky", "Milkshake", "Dune", "Bond", "Moneypenny"].shuffle
horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
end
# 2. Get user's bet
answer = gets.chomp
puts "Your horse is #{answer}"
# 3. Run the race 🐴

# 4. Print results
puts "And here come the horses! And the order of the winners is #{horses}"
if answer == horses[0]
    new_balance += new_balance + 50
    puts "Congrats sir you've won 50$!"
    puts "Account Balance :#{new_balance}$"
else 
    new_balance = new_balance - 10
    puts "It seems you've lost sire, better luck next time. We've taken the liberty of removing 10$ from your balance."
    puts "Account Balance :#{new_balance}$"
end
# 5. Ask to go again
if answer == "y"
    run = true
else
    run = false
end
end
#6 if he won +50$ else -10$
#7 ask if he wants to play agian
#9 get the answer
#if he selected y and balance > 0 keep running
if balance == 0
    puts "Sir I'm afraid you've run out of funds may I advise you to leave the establshiment?"
    run = false

else
    puts "It seems the horses have one more race in them sir. Would you like to go again [y/n]"
    answer = gets.chomp
    if answer == "y"
        puts "Godspeed sire"
    elseif answer == "n"   
    puts "Best of luck sire, bye"
    else
     puts "Goodbye sire"
    end    
end
