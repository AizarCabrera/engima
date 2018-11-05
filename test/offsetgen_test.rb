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

  def test_it_can_square_date
    assert_instance_of Integer, @offset_gen.square_date('')
  end

  def test_it_can_get_last_four_digits_of_square_date
    assert_instance_of Array, @offset_gen.last_four_digits('041118')
    assert_instance_of Integer, @offset_gen.last_four_digits('041118').first
    assert_equal [9, 9, 2, 4], @offset_gen.last_four_digits('041118')
  end

  def test_it_can_get_last_four_digits_of_square_date_if_no_offset_is_provided
    assert_instance_of Array, @offset_gen.set_offset(Time.new)
    assert_instance_of Integer, @offset_gen.set_offset(Time.new).first
  end

  def test_it_can_format_offset_even_when_offset_is_not_provided
    assert_equal [9, 9, 2, 4], @offset_gen.format_offset('041118')
    assert_instance_of Array, @offset_gen.format_offset('041118')
    assert_instance_of Array, @offset_gen.format_offset('')
    assert_instance_of Integer, @offset_gen.format_offset('041118').first
    assert_instance_of Integer, @offset_gen.format_offset('').first
  end

end
