require './helper'

class KeyGen

  attr_reader :key

  def initilalize
    @key = key_maker
  end

  def random
    rand(00000..99999).to_s.rjust(5, '0').split("")
  end

  def key_maker
    pair = []
    4.times do |index|
      pair << (random[index] + random[index + 1]).to_i
    end
    pair
  end

end
