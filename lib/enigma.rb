require './helper'

class Enigma

  attr_reader :alphabet, :shift

  def initialize(shift = ShiftGen.new)
    @shift    = shift
    @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
  end

  def get_new(position)
     number = position / @alphabet.length
     new_position = position - @alphabet.length * number
     @alphabet[new_position]
  end

  def encrypt(message)
    encrypted = ''
    message.each_char.with_index do |letter, i|
      position = @alphabet.index(letter) + @shift.shift_maker(i % 4)
      encrypted += get_new(position)
    end
    encrypted
  end

  def decrypt(message)
    encrypted = ''
    message.each_char.with_index do |letter, i|
      position = @alphabet.index(letter) - @shift.shift_maker(i % 4)
      encrypted += get_new(position)
    end
    encrypted
  end

end
