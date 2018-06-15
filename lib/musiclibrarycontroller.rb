class MusicLibraryController

  attr_accessor :path

  def initialize(path = './db/mp3s')
    @path = path
    new_importer = MusicImporter.new(path)
    new_importer.import
  end

  def call
    puts "Welcome to your music library!"

    loop do
      puts "What would you like to do?"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      user_input = gets.strip
      break if user_input == "exit"

      case user_input
        when 'list songs'
          list_songs
        when 'list artists'
        when 'list genres'
        when 'list artist'
        when 'list genre'
        when 'play song'
        else
          puts "Invalid Entry"
      end

    end

  end

  def list_songs
    Songs.all

  end

end
