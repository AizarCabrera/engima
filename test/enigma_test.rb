require './helper'

class EnigmaTest < Minitest::Test

  def setup
    @e= Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @e
  end

  def test_it_can_encrypt_one_character
    assert_equal ({:encryption=>"l", :key=>"12345", :offset=>"9924"}), @e.encrypt('r',"12345","041118")
  end

  def test_it_can_decrypt_one_character
    assert_equal ({:decryption=>"r", :key=>"12345", :offset=>"9924"}), @e.decrypt('l',"12345","041118")
  end

  def test_it_can_encrypt_one_message_passing_arguments
    assert_equal ({:encryption=>"bjugieejlqm", :key=>"12345", :offset=>"9924"}), @e.encrypt('hello world',"12345","041118")
  end

  def test_it_can_decrypt_one_message_passing_arguments
    assert_equal ({:decryption=>"hello world", :key=>"12345", :offset=>"9924"}), @e.decrypt('bjugieejlqm',"12345","041118")
  end

end
