def caesar_cipher(string, shift_number)
  alphabets = ("a".."z").to_a
  split_string = string.split("")
  final_output_split = []
  j=0
  while j < split_string.length do
    item = alphabets.index {|i| i == split_string[j].downcase}
    if item != nil
    if item + shift_number > 25
      shift_number -= (26 * ((item + shift_number)/26).to_i)
    elsif item + shift_number < -26
      shift_number += (26 * ((-(item + shift_number)/26)).to_i)
    end
    if split_string[j] == split_string[j].upcase
    final_output_split.push(alphabets[item + shift_number].upcase)
    else
      final_output_split.push(alphabets[item + shift_number])
    end
else
  final_output_split.push(split_string[j])
end
j += 1
  end
  return final_output_split.join
  end

puts "please input string"
  user_string = gets.chomp

  puts "please input number"
  user_number = gets.chomp.to_i

  print caesar_cipher(user_string, user_number)