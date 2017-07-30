class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    mm, ss = @seconds.divmod(60)
    hh, mm = mm.divmod(60)

    "#{format('%02d', hh)}:#{format('%02d', mm)}:#{format('%02d', ss)}"
  end
end