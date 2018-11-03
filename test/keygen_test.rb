require './helper'

class KeyGenTest < Minitest:: Test

  def test_it_exists
    key_gen = KeyGen.new

    assert_instance_of KeyGen, key_gen
  end

  def test_it_can_generate_random_number_for_key
    key_gen = KeyGen.new

    assert_instance_of Array, key_gen.random
    refute_equal 99999, key_gen.random.join.to_i
  end

  def test_it_can_generate_a_random_key_as_array
    key_gen = KeyGen.new

    assert_equal 4,key_gen.key_maker.length
    assert_instance_of Array,key_gen.key_maker
    assert_instance_of Integer,key_gen.key_maker.first
  end

end
