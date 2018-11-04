require './helper'

class EnigmaTest < Minitest::Test

  def setup
    @e= Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @e
  end

  def test_it_has_an_alphabet
    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @e.alphabet
  end

  # def test_it_gets_a_letter__with_position_number_greater_than_alphabet
  #   assert_equal ' ', @e.get_new(80)
  # end

  def test_it_can_encrypt_one_character
    assert_equal 'l', @e.encrypt('r',"12345","041118")
  end

  def test_it_can_decrypt_one_character
    assert_equal 'r', @e.decrypt('l',"12345","041118")
  end

  def test_it_can_encrypt_one_message
    assert_equal 'bjugieejlqm', @e.encrypt('hello world',"12345","041118")
  end

  def test_it_can_decrypt_one_message
    assert_equal 'hello world', @e.decrypt('bjugieejlqm',"12345","041118")
  end

end
