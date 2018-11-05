require './helper'

class EnigmaTest < Minitest::Test

  def setup
    @e= Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @e
  end

  def test_it_can_encrypt_one_character_and_returns_a_hash
    assert_equal ({:encryption=>"l", :key=>"12345", :offset=>"9924"}), @e.encrypt('r',"12345","041118")
  end

  def test_it_can_decrypt_one_character_and_returns_a_hash
    assert_equal ({:decryption=>"r", :key=>"12345", :offset=>"9924"}), @e.decrypt('l',"12345","041118")
  end

  def test_it_can_encrypt_one_message_passing_arguments_and_returns_a_hash
    assert_equal ({:encryption=>"hiroojawgpiotd ah", :key=>"12346", :offset=>"3524"}), @e.encrypt('this is so secret',"12346","051218")
  end

  def test_it_can_decrypt_one_message_passing_arguments_and_returns_a_hash
    assert_equal ({:decryption=>"this is so secret", :key=>"12346", :offset=>"3524"}), @e.decrypt('hiroojawgpiotd ah',"12346","051218")
  end

end
