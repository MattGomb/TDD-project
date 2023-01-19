require_relative '../solver'

describe Solver do
  it 'should return an instance of solver class' do
    solver = Solver.new
    expect(solver).to be_an_instance_of(Solver)
  end
end
