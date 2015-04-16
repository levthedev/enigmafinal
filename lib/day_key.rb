class DayKey
  attr_reader :today

  def initialize(time = Time.now.strftime("%d%m%y"))
    @today = (time.to_i ** 2).to_s[-4..-1].to_i
  end
end

