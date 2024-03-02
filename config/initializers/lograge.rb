Rails.application.configure do
  config.lograge.enabled = true
  config.lograge.formatter = Lograge::Formatters::Json.new
  config.lograge.custom_options = ->(event) {
    exceptions = %w(controller action format authenticity_token)
    payload = event.payload
    payload[:params] = payload[:params].except(*exceptions) #controller, action名を排除

    # exceptionが発生された場合、Exceptionとbacktraceを出力
    if payload[:exception]
      payload[:exception] = payload[:exception]
      payload[:exception_backtrace] = payload[:exception_object].backtrace[0..6]
    end

    {
        method: payload[:method],
        path: payload[:path],
        controller: payload[:controller],
        action: payload[:action],
        status: payload[:status],
        duration: payload[:duration],
        params: payload[:params],
        exception: payload[:exception],
        exception_backtrace: payload[:exception_backtrace],
    }
  }
end