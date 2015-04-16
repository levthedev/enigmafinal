require 'minitest/autorun'
require 'minitest'
require 'minitest/pride'
require '../lib/final_key.rb'

class FinalKeyTest < Minitest::Test

  def test_it_does_not_repeat
    rotation = FinalKey.new
    rotation2 = FinalKey.new
    refute_equal rotation.combine_keys, rotation2.combine_keys
  end

  def test_it_creates_array_of_length_4
     rotation = FinalKey.new
     assert_equal rotation.combine_keys.length, 4
  end

  def test_addition_of_keys
    rotation = FinalKey.new
    if rotation.combine_keys[0].to_s.length == 2 &&
       rotation.combine_keys[1].to_s.length == 2
    assert_equal ((rotation.combine_keys[0]-2).to_s[-1].to_i), ((rotation.combine_keys[1]-2).to_s[0].to_i)
      else skip
    end
  end
end
