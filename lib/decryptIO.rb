require_relative 'reverse_rubix.rb'
require_relative 'final_key.rb'
require 'pry'
#;binding.pry
file = File.open("#{ARGV[0]}", "r")
encrypted_message = file.read
decrypted_instance = Decrypt.new(ARGV[2])
decrypted_message = decrypted_instance.decrypt(encrypted_message)

decrypted_file = File.open(ARGV[1], "w")
decrypted_file.write decrypted_message
decrypted_file.close
puts "Created '#{ARGV[1]} with the date #{Time.now.strftime("%d%m%y")} and a final ABCD rotation of #{ARGV[2]}"



# require_relative 'reverse_rubix.rb'
# require_relative 'rubix.rb'
# require_relative 'final_key.rb'
#
# #file = File.open(ARGV[0], "r")
# encrypted = file.read
# d = Decrypt.new.
#   decrypt(encrypted, ARGV[2])
# decrypted_message = d
#
# decrypted_file = File.open(ARGV[1], "w")
# decrypted_file.write decrypted_message
# decrypted_file.close
# r = Encrypt.new
# key = FinalKey.new
#
# puts "Created '#{ARGV[0]} with the key #{r.final_key} and date #{Time.now.strftime("%d%m%y")}"
#
#
