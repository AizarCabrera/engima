require './helper'

class CryptTest < Minitest::Test

  def setup
    @c= Crypt.new('hello','12345','041118')
  end

  def test_it_exists
    assert_instance_of Crypt, @c
  end

  def test_it_has_attributes
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @c.alphabet
    assert_equal 'hello', @c.message
    assert_instance_of KeyGen, @c.key
    assert_instance_of OffsetGen, @c.offset
    assert_instance_of ShiftGen, @c.shift
  end

  def test_it_gets_a_letter__with_position_number_greater_than_alphabet
    assert_equal 'p', @c.get_new(96)
  end


end
