require 'ddtrace/auto_instrument'

Datadog.configure do |c|
 c.agent.host = ENV["DATADOG_AGENT_HOST"]
 c.agent.port = 8126
 c.service = "rails"
 c.env = "local"
 c.tracing.instrument :rails, service: "rails"
end