require './helper'

class OffsetGen

  attr_reader :offsets

  def initialize
    @offsets = last_four_digits
  end

  def today_date
    Time.new
  end

  def square_date
    (today_date.day.to_s + today_date.month.to_s + (today_date.year % 100).to_s).to_i ** 2
  end

  def last_four_digits
    square_date_string  = square_date.to_s
    last_four = square_date_string[-4..-1]
    last_four.chars.map(&:to_i)
  end

end
