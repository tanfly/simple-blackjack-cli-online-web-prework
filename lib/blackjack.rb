def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  deal_card = rand(1..11)
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
  total = deal_card + deal_card
  display_card_total(total)
  return total
end


def hit?(total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
   total += deal_card
  elsif user_input == 's'
  total
end
end

def invalid_command
  puts "Invalid Command"
  hit?(total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?(total)
  display_card_total(total)
  until display_card_total(total) > 21
end
end_game
end
    
