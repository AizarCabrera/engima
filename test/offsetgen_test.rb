require './helper'

class OffsetGenTest < Minitest::Test

  def test_it_exists
    offset_gen = OffsetGen.new
    assert_instance_of OffsetGen, offset_gen
  end
end
