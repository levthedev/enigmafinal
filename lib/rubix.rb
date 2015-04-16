require_relative 'final_key.rb'
require 'pry'

class Encrypt
  attr_reader :encrypted,
              :combined_key

  CHARACTER_MAP = ("a".."z").to_a + ("0".."9").to_a + [" ", ".", ","]

  def initialize
    @daykey = DayKey.new
    @randkey = RandKey.new
    @combined_key = FinalKey.new(@daykey, @randkey).combine_keys
  end

  def slice_message(message)
    message.chars.each_slice(4).to_a
  end

  def new_index(letter, index)
    (CHARACTER_MAP.index(letter) + @combined_key[index]) % 39
  end

  def encrypt(message)
    @encrypted = []
    slice_message(message).each do |sub_array|
      sub_array.each_with_index do |letter, index|
        @encrypted << CHARACTER_MAP[new_index(letter, index)]
      end
    end
    return @encrypted.join
  end
end



