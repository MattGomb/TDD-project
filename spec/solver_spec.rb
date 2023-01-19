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
    it 'should return an error message when N is smaller than 0' do
      expect(@solver.factorial(-1)).to raise_exception
    end

    it 'should return 1 when N is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should the multiplication of all integers from 1 to N' do
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(10)).to eq(3628800)
  end
end
