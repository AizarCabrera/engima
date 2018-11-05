require './helper'

class Crypt
  attr_reader :message, :key, :offset, :shift, :alphabet

  def initialize(message, key, offset)
    @alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    @message  = message
    @key      = KeyGen.new(key)
    @offset   = OffsetGen.new(offset)
    @shift    = ShiftGen.new(@key.key_maker, @offset.offset)
  end

  def get_new(position)
     number = position / @alphabet.length
     new_position = position - @alphabet.length * number
     @alphabet[new_position]
  end

  def encrypt
    encrypted = ''
    message.each_char.with_index do |letter, i|
      position = @alphabet.index(letter) + @shift.shift_maker(i % 4)
      encrypted += get_new(position)
    end
    encryption_return(encrypted)
  end

  def decrypt
    decrypted = ''
    message.each_char.with_index do |letter, i|
      position = @alphabet.index(letter) - @shift.shift_maker(i % 4)
      decrypted += get_new(position)
    end
    decryption_return(decrypted)
  end

  def encryption_return(encryption)
    {
      encryption: encryption,
      key: @key.key.join,
      offset: @offset.offset.join,
    }
  end

  def decryption_return(decryption)
    {
      decryption: decryption,
      key: @key.key.join,
      offset: @offset.offset.join,
    }
  end
end
