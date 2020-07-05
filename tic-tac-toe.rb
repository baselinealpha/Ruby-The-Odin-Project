game = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
winner_games = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

users = {
"user1" => ['', ''],
"user2" => ['', ''],
}

current_player = 1


def game_display(game)
  puts " #{game[0]} | #{game[1]} | #{game[2]} "
  puts "-----------"
  puts " #{game[3]} | #{game[4]} | #{game[5]} "
  puts "-----------"
  puts " #{game[6]} | #{game[7]} | #{game[8]} "
end



puts "Let the games begin!"
puts "Player 1, please enter your name:"
users["user1"][0] = gets.chomp
users["user1"][1] = "X"
puts "Player 2, please enter your name:"
users["user2"][0] = gets.chomp
users["user2"][1] = "O"

puts "Hit enter to continue"
gets



while (current_player == 1 || current_player == 2) do
  game_display(game)
  puts "#{users["user#{current_player}"][0]} (Player #{current_player}), please enter a number from 1 to 9:"
  choice_number = gets.chomp.to_i


  while (choice_number < 1 || choice_number > 9 || game[choice_number -1].to_i == 0) do
    game_display(game)
    if (choice_number < 1 || choice_number > 9)
    puts "INVALID ENTRY!"
    puts "#{users["user#{current_player}"][0]} (Player #{current_player}), please enter a number from 1 to 9:" 
    else
    puts "That spot is taken! Please #{users["user#{current_player}"][0]}, let's be serious"
    puts "#{users["user#{current_player}"][0]} (Player #{current_player}), please enter a number from 1 to 9:"
    end
    choice_number = gets.chomp.to_i
  end


game[choice_number - 1] = users["user#{current_player}"][1]


winner_games.each do |array|
  if (game[array[0] - 1] == game[array[1] - 1] && game[array[1] - 1] == game[array[2] -1])
    game_display(game)
    puts "#{users["user#{current_player}"][0]} (Player #{current_player}) wins!"
    current_player = ""
  end
end


if game.all? {|spot| spot.to_i == 0}
  game_display(game)
  puts "Game Over"
if current_player != ""
  puts "The board is full!"
end
current_player = ""
elsif current_player == 1
  current_player = 2
elsif current_player == 2
  current_player = 1
end

end