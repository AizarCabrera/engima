require './helper'

class ShiftGenTest < Minitest::Test

  def setup
  @shiftgen= ShiftGen.new([12, 34, 56, 78], [9, 0, 1, 2])
  end

  def test_it_exists
    assert_instance_of ShiftGen, @shiftgen
  end

  def test_it_has_correct_attributes
    assert_instance_of Array, @shiftgen.key
    assert_instance_of Array, @shiftgen.offset
    assert_equal [12, 34, 56, 78], @shiftgen.key
    assert_equal [9, 0, 1, 2], @shiftgen.offset
  end

  def test_it_can_create_a_shift
    assert_instance_of Integer, @shiftgen.shift_maker(3)
  end

  # def test_it_can_create_several_shifts
  #   assert_instance_of Integer, @shiftgen.shift_maker(0)
  #   assert_equal 21, shiftgen.shift_maker(0)
  #   assert_equal 57, shiftgen.shift_maker(2)
  #   assert_equal 80, shiftgen.shift_maker(3)
  #   assert_equal 80, shiftgen.shift_maker(3)
  # end

end
