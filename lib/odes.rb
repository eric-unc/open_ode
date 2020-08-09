module ODE
	def linspace(t0, tf, n)
		dt = (tf - t0)/(n - 1)
		Array.new(n){|i| t0 + i*dt}
	end

	def forward_euler(func, t0, y0, tf, n)
		dt = (tf - t0)/(n - 1)
		t = linspace(t0, tf, n)
		y_app = Array.new(n, 0.0)
		y_app[0] = y0

		(1..(n - 1)).each do |i|
			#puts dt*func.call(t[i], y_app[i - 1])
			puts dt*(t[i] ** 2)
			y_app[i] = y_app[i - 1] + dt*func.call(t[i], y_app[i - 1])
		end

		[t, y_app]
	end
end
