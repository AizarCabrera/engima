require './helper'

class OffsetGenTest < Minitest::Test

  def test_it_exists
    offset_gen = OffsetGen.new

    assert_instance_of OffsetGen, offset_gen
  end

  def test_it_can_get_todays_date
    offset_gen = OffsetGen.new

    assert_instance_of Time, offset_gen.date
  end

  def test_it_can_square_todays_date
    offset_gen = OffsetGen.new

    assert_instance_of Integer, offset_gen.square_date
  end

  def test_it_can_get_last_four_digits_of_square_date
    offset_gen = OffsetGen.new

    assert_instance_of Array, offset_gen.last_four_digits
    assert_instance_of Integer, offset_gen.last_four_digits.first
  end

end
