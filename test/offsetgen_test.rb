require './helper'

class OffsetGenTest < Minitest::Test

  def setup
  @offset_gen = OffsetGen.new('')
  end

  def test_it_exists
    assert_instance_of OffsetGen, @offset_gen
  end

  def test_it_can_get_todays_date
    assert_instance_of String, @offset_gen.get_date(Time.new)
  end

  # def test_it_can_square_todays_date
  #   assert_instance_of Integer, @offset_gen.square_date
  # end
  #
  # def test_it_can_get_last_four_digits_of_square_date
  #   assert_instance_of Array, @offset_gen.last_four_digits
  #   assert_instance_of Integer, @offset_gen.last_four_digits.first
  # end

end
