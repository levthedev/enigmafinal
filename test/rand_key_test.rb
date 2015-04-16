require 'minitest/autorun'
require 'minitest'
require 'minitest/pride'
require '../lib/rand_key.rb'

class RandKeyTest < Minitest::Test

  def test_it_creates_array_of_length_5
    rand = RandKey.new
    assert_equal rand.random_key.length, 5
  end

  def test_no_two_new_arrays_are_equal
    rand = RandKey.new
    rand2 = RandKey.new
    refute_equal rand.random_key, rand2.random_key
  end
end
