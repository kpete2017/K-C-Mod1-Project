class HangmanGame

  def initialize answer_word, main_menu, player
    @player = player
    @main_menu = main_menu
    @prompt = TTY::Prompt.new
    @banner = File.read "Banners/bannerfile.txt"
    @hangman = build_hangman
    @answer_word = answer_word
    binding.pry
    @wrong_guesses = []
    @correct_guesses = []
    @hangman_position = 0
    @choice = ""
    play_game
  end

  def play_game
    system 'clear'
    puts @banner.colorize :light_blue
    puts "RULES:"
    puts "ONLY ONE LETTER AT A TIME CAN BE GUESSED"
    puts "GUESSES MUST BE IN LOWERCASE"
    puts "THE GAME WILL BE LOST AFTER 6 WRONG GUESSES"
    puts "COMPLETE THE PHRASE TO WIN THE GAME"
    print_hangman
    print_progress
    print_wrong_guesses
    check_lose
    @choice = @prompt.ask(' Enter a character to guess!')
    check_if_valid
    is_correct_guess?
    check_if_won
    play_game
  end

  def check_if_won
    @check_win_word = @answer_word.downcase.split("").collect(&:strip).reject{|element| element.empty?}
    if @check_win_word.all? { |letters| @correct_guesses.include?(letters) }
      win_game
    end
  end

  def is_correct_guess?
    @entry_is_correct_guess = split_word.any? @choice

    if @entry_is_correct_guess
      @correct_guesses << @choice
    else
      @wrong_guesses << @choice
      @hangman_position += 1
    end
  end

  def split_word
    @answer_word.downcase.split("")
  end

  def check_if_valid
    if @choice == nil || @choice.length > 1
      puts " Please enter valid response"
      @choice = @prompt.ask(' Enter a character to guess!:')
      check_if_valid
    end
  end

  def check_lose
    if @hangman_position == 6
      lose_game
    end
  end

  def print_hangman
    puts @hangman[@hangman_position] + "\n\n"
  end

  def print_wrong_guesses
    puts " Wrong guesses:\n #{@wrong_guesses}\n\n\n"
  end

  def print_progress
    print " Word to guess: \n\n "
    split_word.each do |character|
      if @correct_guesses.any? character
        print character
      elsif character == " "
        print " "
      elsif character == "-"
        print "-"
      elsif character == "'"
        print "'"
      else
        print "_"
      end
    end
    puts "\n\n\n"
  end

  def is_correct_guess
    split_word.any? choice
  end

  def win_game
    win_banner = File.read "Banners/win_banner.txt"
    puts win_banner.colorize :green
    puts " The answer was #{@answer_word.titleize}"
    if @player != "Guest"
      @player.score += 1
      @player.save
    end
    play_again?
  end

  def lose_game
    lose_banner = File.read "Banners/lose_banner.txt"
    puts lose_banner.colorize :red
    puts " The answer was #{@answer_word.titleize}"
    play_again?
  end

  def play_again?
    answer = @prompt.yes? " Play Again?"
    if answer
      CatagoryChoice.new @main_menu, @player
    else

      @main_menu.show_main_menu
    end
  end

  def build_hangman
    # ASCII Created by Chris Horton
    # https://gist.github.com/chrishorton/8510732aa9a80a03c829b09f12e20d9c
    @hangman_array = ['''
      +---+
      |   |
          |
          |
          |
          |
    =========''', '''
      +---+
      |   |
      O   |
          |
          |
          |
    =========''', '''
      +---+
      |   |
      O   |
      |   |
          |
          |
    =========''', '''
      +---+
      |   |
      O   |
     /|   |
          |
          |
    =========''', '''
      +---+
      |   |
      O   |
     /|\  |
          |
          |
    =========''', '''
      +---+
      |   |
      O   |
     /|\  |
     /    |
          |
    =========''', '''
      +---+
      |   |
      O   |
     /|\  |
     / \  |
          |
    =========''']
  end
end