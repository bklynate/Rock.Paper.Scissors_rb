def prompt(words)
  puts ">>> #{words}"
end

def user_choice
  begin
    choice_list = {
      "r" => "Rock",
      "p" => "Paper",
      "s" => "Scissors"
      }             
    choices = gets.chomp
    prompt  "That's not a valid choice, please try again" unless choice_list[choices]
  end until choice_list[choices]
  return choice_list[choices]
end

def computer_choice
  choice_hash = {
      "r" => "Rock",
      "p" => "Paper",
      "s" => "Scissors"
      }
  choice_hash.values.sample
end

def winner(choice,computer_choice)
  if choice == 'Rock' && computer_choice == 'Paper'
    prompt "You chose rock and the computer chose paper. You Lost!!!"
  elsif choice == 'Paper' && computer_choice == 'Rock'
    prompt "You picked paper and the computer picked rock. You Win!!"
  elsif choice == 'Scissors' && computer_choice == 'Rock'
    prompt "You chose scissors and the computer chose rock. You Lost!!"
  elsif choice == 'Rock' && computer_choice == 'Scissors'
    prompt "You picked rock and the computer chose scissors. You Won!!"
  elsif choice == 'Paper' && computer_choice == 'Scissors'
    prompt "You chose paper and the computer chose scissors. You Lost!!"
  elsif choice == 'Scissors' && computer_choice == 'Paper'
    prompt "You picked scissors and the computer chose paper. You Won!"
  else
    prompt "Tie Game!!"
  end
end

prompt "Play Rock Paper Scissors!"
begin
  prompt "Choose one: (R/P/S)"
  choice = user_choice

  winner(choice,computer_choice)
  prompt "Try Again?[y/n] "
  answer = gets.chomp.downcase
end while answer == 'y'