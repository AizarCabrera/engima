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

end
