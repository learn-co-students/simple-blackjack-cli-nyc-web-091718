def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  temp =  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  loop do
  prompt_user
  input = get_user_input
  
  if(input == 's')
  break
  elsif(input =='h')
    total += deal_card
    break
  else
    invalid_command
    prompt_user
  end
  end
  return total
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  total = 0 
  welcome
  total = initial_round

  until total > 21
    
    temp_amount = hit?(total)
    if temp_amount == total
    end_game(total)
    break
    else
      total += temp_amount - total
      if total > 21
      break
      end
    end
  end
display_card_total(total)
end_game(total)
  
end
    
