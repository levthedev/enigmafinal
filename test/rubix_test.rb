require 'minitest/autorun'
require 'minitest'
require 'minitest/pride'
require '../lib/rubix.rb'

class RubixTest < Minitest::Test

  def test_it_slices_message
    enigma = Encrypt.new
    assert_equal enigma.slice_message("hello"), [["h", "e", "l", "l"], ["o"]]
  end

  def test_it_changes_message
    enigma = Encrypt.new
    refute_equal enigma.encrypt("1234"), "1234"
  end
end
