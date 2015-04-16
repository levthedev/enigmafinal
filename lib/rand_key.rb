class RandKey
  attr_reader :random_key

  def initialize
    @random_key = []
    until @random_key.length >= 5
      @random_key << rand(0..9)
    end
  end
end

