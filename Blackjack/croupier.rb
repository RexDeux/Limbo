require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    "Over 21, you lose!"
  elsif player_score == 21
    "BLACKJACK GODDAMNIT!YEEE-HAW!"
  elsif player_score == bank_score
    "Push!"
  elsif player_score > bank_score
    "You beat the bank fella, kudos to you, you win!"
  elsif bank_score == 21
    "BLACKJACK FOR THE BANK FELLA"
  else bank_score > player_score  
    "The bank beats you! You lose."
  end  
end
