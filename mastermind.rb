=begin Build a Mastermind game from the command line where you have 12 turns to guess the secret code,
starting with you guessing the computer’s random code.
Think about how you would set this problem up!
Build the game assuming the computer randomly selects the secret colors and the human player must guess them.
Remember that you need to give the proper feedback on how good the guess was each turn!
Now refactor your code to allow the human player to choose whether they want to be the creator of the secret code or the guesser.
Build it out so that the computer will guess if you decide to choose your own secret colors.
=end

class Game
  def initialize
    @code = {first:"1", second:"2", third:"3", fourth:"4"}
    @key = {first:"1", second:"2", third:"3", fourth:"4"}
  end

  def show_key
    puts @key
  end

  def show_board
    puts @code
  end
end

game = Game.new
game.show_key
