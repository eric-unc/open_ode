require_relative '../lib/odes.rb'

describe ODE do
	include ODE

	describe '#linspace' do
		it 'returns an evenly spaced array given t0 = 0, tf = 5, with a size of N=6' do
			expect(linspace(0.0, 5.0, 6)).to eq([0, 1, 2, 3, 4, 5])
		end

		it 'returns an evenly spaced array given t0 = 0, tf = 4, with a size of N=5' do
			expect(linspace(0.0, 4.0, 5)).to eq([0, 1, 2, 3, 4])
		end

		it 'returns an evenly spaced array given t0 = -3, tf = 3, with a size of N=7' do
			expect(linspace(-3.0, 3.0, 7)).to eq([-3, -2, -1, 0, 1, 2, 3])
		end

		it 'returns an evenly spaced array given t0 = 0, tf = 4, with a size of N=9' do
			expect(linspace(0.0, 4.0, 9)).to eq([0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4])
		end
	end

	describe '#forward_euler' do
		it 'returns the forward euler of x^2 on [0, 5] with N=6, starting at (0, 1)' do
			expect(forward_euler(Proc.new {|x, y| x**2.0}, 0.0, 1.0, 5.0, 6.0))
				.to eq([[0, 1, 2, 3, 4, 5], [1, 11.0/6, 31.0/6, 38.0/3, 26, 281.0/6]])
		end
	end
end