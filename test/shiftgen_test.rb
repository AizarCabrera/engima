require './helper'

class ShiftGenTest < Minitest::Test

  def test_it_exists
    shiftgen= ShiftGen.new

    assert_instance_of ShiftGen, shiftgen
  end


  def test_it_has_correct_attributes
    shiftgen= ShiftGen.new

    assert_instance_of Array, shiftgen.key
    assert_instance_of Array, shiftgen.offset
  end

  def test_it_can_create_a_shift
    shiftgen= ShiftGen.new

    assert_instance_of Integer, shiftgen.shift_maker(3)
  end

  def test_it_can_create_several_shifts
    shiftgen= ShiftGen.new([12, 34, 56, 78], [9, 0, 1, 2])

    assert_instance_of Integer, shiftgen.shift_maker(0)
    assert_equal 21, shiftgen.shift_maker(0)
    assert_equal 57, shiftgen.shift_maker(2)
    assert_equal 80, shiftgen.shift_maker(3)
    assert_equal 80, shiftgen.shift_maker(3)
  end

end
