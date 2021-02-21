require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index do |song, index|
  number=index+1
  puts "#{number}. #{song}"
end 
end

def play (songs)
  puts "Please enter a song name or number:"
  user_input=gets.strip
  songs.each_with_index do |song, index|
  number=index+1
  binding.pry
  if user_input == song
    puts "Playing #{song}"
  elsif user_input.to_i == number
    puts "Playing #{song}"
  end
end 
puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
  puts "Please enter a command:"
  user_input=gets.strip
  if user_input=="exit"
    exit_jukebox
    break
  elsif user_input=="list"
    list(songs)
  elsif user_input=="play"
    play(songs)
  elsif user_input=="help"
    help
  end
end 
end 
    