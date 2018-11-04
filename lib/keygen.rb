require './helper'

class KeyGen
  attr_reader :key

  def initialize(key)
    @key = format_key(key)
  end

  def format_key(key)
    if key.empty?
      rand(00000..99999).to_s.rjust(5, '0').split('')
    else
      key.rjust(5, '0').split('')
    end
  end

  def key_maker
    pair = []
    4.times do |index|
      pair << (key[index] + key[index + 1]).to_i
    end
    pair
  end
end
