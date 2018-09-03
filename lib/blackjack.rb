def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  prng = Random.new
  prng.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  initial_sum = deal_card + deal_card
  display_card_total(initial_sum)
  return initial_sum
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "h"
    current_card_total += deal_card
  elsif answer == "s"
    current_card_total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards_in_hand = initial_round
  until cards_in_hand > 21
    cards_in_hand = hit?(cards_in_hand)
    display_card_total(cards_in_hand)
  end
end_game(cards_in_hand)
end
