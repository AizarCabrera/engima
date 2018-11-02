require './helper'

class EnigmaTest < Minitest::Test

  def test_it_exists
    e= Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_has_an_alphabet
    e= Enigma.new
    expected = ["a", "b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
    assert_equal expected, e.alphabet
  end



end
