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
  #
  # # def test_it_gets_a_letter__with_position_number_greater_than_alphabet
  # #   assert_equal ' ', @e.get_new(80)
  # # end
  #
  def test_it_can_encrypt_one_character
    assert_equal ({:encryption=>"l", :key=>"12345", :offset=>"9924"}), @e.encrypt('r',"12345","041118")
  end

  def test_it_can_decrypt_one_character
    assert_equal ({:decryption=>"r", :key=>"12345", :offset=>"9924"}), @e.decrypt('l',"12345","041118")
  end

  def test_it_can_encrypt_one_message
    assert_equal ({:encryption=>"bjugieejlqm", :key=>"12345", :offset=>"9924"}), @e.encrypt('hello world',"12345","041118")
  end

  def test_it_can_decrypt_one_message
    assert_equal ({:decryption=>"hello world", :key=>"12345", :offset=>"9924"}), @e.decrypt('bjugieejlqm',"12345","041118")
  end

end
