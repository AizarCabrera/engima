require './helper.rb'

class EnigmaTest < Minitest::Test

  def test_it_exists
    e= Enigma.new
    assert_instance_of Enigma, e
  end

  def test_it_has_an_alphabet
    e= Enigma.new
    expected = ["a", "b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","1","2","3","4","5","6","7","8","9","0"," ",".",","]
    assert_equal expected, e.alphabet
  end

end
