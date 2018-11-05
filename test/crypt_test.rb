require './helper'

class CryptTest < Minitest::Test

  def setup
    @c= Crypt.new('','','')
  end

  def test_it_exists
    assert_instance_of Crypt, @c
  end

end
