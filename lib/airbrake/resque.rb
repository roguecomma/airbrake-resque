module Airbrake
  class Resque
    class << self
      attr_accessor :queue
    end
    self.queue = 'airbrake'
    
    def self.perform(*args)
      Airbrake.sender.send_to_airbrake_without_resque(*args)
    rescue Exception => e
      # rescue everything to avoid creating errors jobs for error jobs
    end
  end
end
