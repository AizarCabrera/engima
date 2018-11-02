require './helper'

class OffsetGenTest < Minitest::Test

  def test_it_exists
    offset_gen = OffsetGen.new

    assert_instance_of OffsetGen, offset_gen
  end

  def test_it_can_get_todays_date
    offset_gen = OffsetGen.new

    assert_instance_of String, offset_gen.get_today_date
  end

  def test_it_can_square_todays_date
    offset_gen = OffsetGen.new

    assert_instance_of Integer, offset_gen.square_date
  end


end
