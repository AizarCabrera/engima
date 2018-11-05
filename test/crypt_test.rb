require './helper'

class CryptTest < Minitest::Test

  def setup
    @c= Crypt.new('','','')
  end

  def test_it_exists
    assert_instance_of Crypt, @c
  end

  def test_it_has_attributes
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @c.alphabet
    assert_equal '', @c.message
    assert_instance_of KeyGen, @c.key
    assert_instance_of OffsetGen, @c.offset
    assert_instance_of ShiftGen, @c.shift
  end

end
