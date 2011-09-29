require 'airbrake/sender'
require 'airbrake/resque'

Airbrake::Sender.class_eval do
  def send_to_airbrake_with_resque(*args)
    Resque.enqueue Airbrake::Resque, *args
  end
  
  alias_method :send_to_airbrake_without_resque, :send_to_airbrake
  alias_method :send_to_airbrake, :send_to_airbrake_with_resque
end