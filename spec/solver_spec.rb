require_relative '../solver'
require 'rspec'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  it 'should return an instance of solver class' do
    expect(@solver).to be_an_instance_of(Solver)
  end

  describe '#factorial' do
    it 'should return an error message when n is smaller than 0' do
      expect { @solver.factorial(-1) }.to raise_exception(RuntimeError)
    end

    it 'should return 1 when n is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should the multiplication of all integers from 1 to n' do
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(10)).to eq(3_628_800)
    end
  end

  describe '#reverse' do
    it 'should return a string' do
      reversed_string = @solver.reverse('string')
      expect(reversed_string).to be_kind_of(String)
    end
    it 'should return "olleh" for the string "hello"' do
      reversed_hello = @solver.reverse('hello')
      expect(reversed_hello).to eql 'olleh'
    end
  end

  describe '#fizzbuzz' do
    it 'should return "fizz" when num is divisible by 3' do
      fizz = @solver.fizzbuzz(9)
      expect(fizz).to eql 'fizz'
    end
    it 'should return "buzz" when num is divisible by 5' do
      buzz = @solver.fizzbuzz(10)
      expect(buzz).to eql 'buzz'
    end
    it 'should return "fizzbuzz" when num is divisible by 3 and 5' do
      fizzbuzz_var = @solver.fizzbuzz(15)
      expect(fizzbuzz_var).to eql 'fizzbuzz'
    end
    it 'should return num as a string for other cases' do
      other_case = @solver.fizzbuzz(1)
      expect(other_case).to eql '1'
    end
  end
end
