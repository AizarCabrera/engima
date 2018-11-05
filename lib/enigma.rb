require './helper'

class Enigma

  def encrypt(message, key = '', offset = '')
    c = Crypt.new(message, key, offset)
    c.encrypt
  end

  def decrypt(message, key = '', offset = '')
    c = Crypt.new(message, key, offset)
    c.decrypt
  end

end
