require 'minitest/autorun'
require 'minitest'
require 'minitest/pride'
require '../lib/day_key.rb'

class EnigmaDayTest < Minitest::Test

  def test_it_modifies_default_date_of_today
    now = DayKey.new
    assert_equal now.today, 2225
  end

  def test_it_can_choose_non_default_day
    now = DayKey.new("123456")
    assert_equal now.today, 3936
  end
end
