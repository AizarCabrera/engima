require './helper'

class OffsetGen

  attr_reader :offset

  def initialize(offset)
    @offset = format_offset(offset)
  end

  def get_date(date)
    (date.day.to_s + date.month.to_s + (date.year % 100).to_s)
  end

  def square_date(offset)
    offset.to_i ** 2
  end

  def format_offset(offset)
    if offset.empty?
      set_offset(get_date(Time.new))
    else
      set_offset(offset)
    end
  end

  def last_four_digits(offset)
    square_date_string  = square_date(offset).to_s
    last_four = square_date_string[-4..-1]
    last_four.chars.map(&:to_i)
  end

  def set_offset(offset)
    last_four_digits(offset)
  end


end
