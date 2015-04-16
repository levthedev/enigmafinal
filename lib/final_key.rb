require_relative 'day_key.rb'
require_relative 'rand_key.rb'
require 'pry'
class FinalKey
  attr_reader :now,
              :rand,
              :final_key

  def initialize(now = DayKey.new, rand = RandKey.new)
    @now = now
    @rand = rand
  end

  def combine_keys
    a_rot = @rand.random_key[0..1].join.to_i + @now.today.to_s[0].to_i
    b_rot = @rand.random_key[1..2].join.to_i + @now.today.to_s[1].to_i
    c_rot = @rand.random_key[2..3].join.to_i + @now.today.to_s[2].to_i
    d_rot = @rand.random_key[3..4].join.to_i + @now.today.to_s[3].to_i
    final_key = []
    final_key.push(a_rot, b_rot, c_rot, d_rot)
    return final_key
  end
end


