require './helper'

class ShiftGen

  attr_reader :key, :offset

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def shift_maker(index)
    @key[index] + @offset[index]
  end

end
