class HangmanGame
  def initialize
    system 'clear'
    build_hangman
    puts "made it"
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
    puts @hangman_array
  end
end