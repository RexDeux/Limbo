bank
def(bank_account)
    if bank_account == 0
        print "I'm sorry sir it seems you're out of pocket"
    else
    end
end

horses = ["Lucky", "Milkshake", "Dune", "Bond", "Moneypenny"].shuffle
horses.each_with_index.shuffle do |horse,index|
    puts "#{index + 1} - #{horse}"