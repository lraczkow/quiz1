class Vacation
  attr_accessor :destination, :month

  def initialize(destination, month)
    @destination = destination
    @month = month
  end

  def place
    @destination = destination
  end

  def time_of_year
    @month = month
  end
end


vacation = Vacation.new("Hawaii", "May")
puts vacation.place
puts vacation.time_of_year