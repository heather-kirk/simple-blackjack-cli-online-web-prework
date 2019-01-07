def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card(rand = 1..11)
  1+ rand(11)
end

def display_card_total(x)
 puts "Your cards add up to #{x}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(int)
  puts "Sorry, you hit #{int}. Thanks for playing!"
end

def initial_round
  deal_card
  deal_card
  display_card_total(total = deal_card + deal_card)
  {#total}
  "Your cards add up to #{total}"
end

def hit?(card)
  prompt_user
  get_user_input
  if get_user_input == "s"
    display_card_total
  else get_user_input == "h"
  display_card_total += card
end
end

def invalid_command 
  if get_user_input == "s" || get_user_input == "h"
  puts "Please enter a valid command"
 prompt_user  
end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 welcome
 initial_round
 hit?
 until display_card_total < 21
 end_game 
end
end
