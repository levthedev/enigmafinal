require_relative 'reverse_rubix.rb'
class Crack
  attr_accessor :key

  def initialize(message)
    @key = '00000'
    @modified_message = ''
    @gibberish = message
  end

  def check_key_values
    until confirmed_decrypted?
      decrypt = Decrypt.new(@key)
      @modified_message = decrypt.decrypt(@gibberish)
      @key = (@key.to_i + 1).to_s.rjust(5, "0")
      @key.rjust(5,"0")
    end
    print @modified_message
  end

  private
  def confirmed_decrypted?
    matching_phrase = "..end.."
    @modified_message[-7..-1] == matching_phrase
  end

end

c = Crack.new("")
