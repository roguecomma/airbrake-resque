$LOAD_PATH.unshift 'lib'
require "airbrake-resque/version"

Gem::Specification.new do |s|
  s.name              = "airbrake-resque"
  s.version           = AirbrakeResque::Version::STRING
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Enqueues Airbrake notifications in Resque"
  s.homepage          = "http://github.com/Viximo/airbrake-resque"
  s.email             = "matt@griffinonline.org"
  s.authors           = [ "Matt Griffin" ]
  s.has_rdoc          = false

  s.files             = %w( README.md LICENSE )
  s.files            += Dir.glob("lib/**/*")

  s.add_runtime_dependency 'airbrake'
  s.add_runtime_dependency 'resque'
  
  s.description       = <<desc
  Enqueues Airbrake notifications in Resque.
desc
end
