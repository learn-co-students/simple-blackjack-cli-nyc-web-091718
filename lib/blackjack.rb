def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(cTotal)
  # code #display_card_total here
  puts "Your cards add up to #{cTotal}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  userMove = gets.chomp
  return userMove
end

def end_game(cTotal)
  # code #end_game here
  puts "Sorry, you hit #{cTotal}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit?(cHand)
  # code hit? here
  prompt_user
  uIn = get_user_input
  
  if uIn == 's'
    return cHand
  elsif uIn == 'h'
    cHand += deal_card
  else
    invalid_command
    hit?
  end
  
  return cHand
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
  welcome
  
  total += initial_round
  
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
