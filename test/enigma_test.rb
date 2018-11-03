require './helper'

class EnigmaTest < Minitest::Test

  def test_it_exists
    e= Enigma.new([21, 53, 80, 80])
    assert_instance_of Enigma, e
  end

  def test_it_has_an_alphabet
    e= Enigma.new([21, 57, 82, 80])
    expected = ["a", "b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
    assert_equal expected, e.alphabet
  end

  def test_it_has_a_shift
    shift = ShiftGen.new([12, 34, 56, 78], [9, 0, 1, 2])
    e= Enigma.new(shift)

    assert_equal 80, e.shift.shift_maker(3)
    assert_instance_of Integer, e.shift.shift_maker(0)
  end

  def test_it_gets_a_letter__with_position_number_greater_than_alphabet
    e = Enigma.new([21, 57, 82, 80])

    assert_equal ' ', e.get_new(80)
  end

  def test_it_can_encrypt_one_character
    e = Enigma.new([21, 57, 82, 80])

    assert_equal 'l', e.encrypt('r')
  end

  def test_it_can_decrypt_one_character
    e = Enigma.new([21, 57, 82, 80])

    assert_equal 'r', e.decrypt('l')
  end

  def test_it_can_encrypt_one_message
    e = Enigma.new([21, 57, 82, 80])

    assert_equal 'bhmki', e.encrypt('hello world')
  end


end
