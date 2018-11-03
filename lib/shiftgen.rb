require './helper'

class ShiftGen

  attr_reader :key, :offset

  def initialize(key = KeyGen.new.key_maker, offset = OffsetGen.new.offsets)
    @key    = key
    @offset = offset
  end



  # binding.pry
end
