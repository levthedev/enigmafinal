require_relative 'rubix.rb'
require_relative 'final_key.rb'
require 'pry'
rk = RandKey.new
dk = DayKey.new
fk = FinalKey.new(dk, rk).combine_keys
# ;binding.pry
file = File.open("#{ARGV[0]}", "r")
message = file.read
encrypted_message = Encrypt.new.encrypt(message)

encrypted_file = File.open(ARGV[1], "w")
encrypted_file.write encrypted_message
encrypted_file.close
puts "Created '#{ARGV[1]} with the date #{Time.now.strftime("%d%m%y")} and a final ABCD rotation of #{fk}"

