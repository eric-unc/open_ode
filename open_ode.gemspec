Gem::Specification.new do |s|
	s.name = 'open_ode'
	s.version = '0.0.0'
	s.date = '2020-08-07' # yyyy-mm-dd
	s.summary = 'Gem to calculate ordinary differential equations (ODEs)'
	s.description = <<-EOF
		The open_ode gem is a gem that implements various numberical procedures for solving orinary differential equations (ODEs)
		similar to those provided by MATLAB. This includes Forward Euler's
		and Adams-Bashforth's methods, among others. For a full list, see
		README.md. open_ode is designed to be relatively light-weight.
	EOF
	s.authors = ['Eric Schneider']
	s.files = ['lib/odes.rb']
	s.homepage = 'https://rubygems.org/gems/open_ode'
	s.license = 'MIT'
end
