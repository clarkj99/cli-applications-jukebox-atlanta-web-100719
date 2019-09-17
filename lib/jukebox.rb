def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if songs.include?(input) 
    puts "Playing #{input}"
  elsif  (input.to_i > 0) && (songs.length >= input.to_i)
#  elsif  (songs.length >= input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
 
  input = ""
  
  until input == "exit"
   puts "Please enter a command:"
    input = gets.strip
    case input
      when "list"
        list(songs)
      when "play"
        play (songs)
      when "help"
        help
      when "exit"
        exit_jukebox
    end
  end
  
end