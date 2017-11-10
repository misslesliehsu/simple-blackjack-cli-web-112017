def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end


def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  total
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == "h"
    total+=deal_card
  elsif answer == "s"
  total
  else
  invalid_command
  prompt_user
  total
  end
end

def invalid_command
  puts "Please end a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  total = hit?(initial_round)
  display_card_total(total)
  until hit?(total) > 21
    hit?(total)
    display_card_total(total)
  end
  end_game(hit?(total))
end
