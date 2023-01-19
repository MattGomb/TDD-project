class Solver
  def factorial(n)
    case
    when n < 0
      raise 'n must be greater than or equal to 0'
    when n == 0
      1
    else
      (1..n).inject(:*)
    end
  end
end
