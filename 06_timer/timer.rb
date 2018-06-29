class Timer
  attr_accessor :seconds, :minutes, :hours
  def initialize
      @seconds = 0
      @minutes = 0
      @hours = 0
  end

  def seconds=(input_seconds)
      self.minutes = input_seconds / 60
      @seconds = input_seconds % 60
  end

  def minutes=(input_minutes)
      self.hours = input_minutes / 60
      @minutes = input_minutes % 60
  end

  def time_string
      "#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"
  end
end
