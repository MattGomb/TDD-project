class Solver
  def factorial(num)
    if num.negative?
      raise 'n must be greater than or equal to 0'
    elsif num.zero?
      1
    else
      (1..num).inject(:*)
    end
  end

  def reverse(string)
    string.chars.reverse.join
  end

  def fizzbuzz(num)
    return 'fizzbuzz' if (num % 3).zero? && (num % 5).zero?
    return 'fizz' if (num % 3).zero?
    return 'buzz' if (num % 5).zero?

    num.to_s
  end
end
