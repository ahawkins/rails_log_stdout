STDOUT.sync = true

def Rails.stdout_logger
  return @_logger if @_logger
  @_logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
  @_logger.level = Logger.const_get(([ENV['LOG_LEVEL'].to_s.upcase, "INFO"] & %w[DEBUG INFO WARN ERROR FATAL UNKNOWN]).compact.first)
  @_logger
end

module RailsLogStdout
  class Engine < ::Rails::Engine
    isolate_namespace RailsLogStdout

    initializer "action_controller.logger" do
      ActiveSupport.on_load(:action_controller) do
        self.logger = Rails.stdout_logger
      end
    end

    initializer "rails.logger" do
      Rails.logger = Rails.stdout_logger
    end
  end
end
