require './helper'
require './lib/crypt'

class Enigma

  attr_reader :alphabet, :shift

  def initialize
    @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
  end

  # def get_new(position)
  #    number = position / @alphabet.length
  #    new_position = position - @alphabet.length * number
  #    @alphabet[new_position]
  # end

  def encrypt(message, key = '', offset = '')
    c = Crypt.new(message, key, offset)
    c.encrypt
  end

  def decrypt(message, key = '', offset = '')
    c = Crypt.new(message, key, offset)
    c.decrypt
  end

end
