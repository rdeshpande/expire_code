module ExpireCode

  NUM_STACKTRACE_LINES = 10

  def self.formatted_exception(time, offending_line)
    "[#{Time.now}] [EXPIRED CODE]: #{offending_line}"
  end

  def self.alert(message)
    if defined?(Rails)
      case Rails.env
      when /test|development/ then raise message
      else logger.warn(message) if defined?(logger)
      end
    else
      raise message
    end
  end

  def expires_at(time, &block)
    expires_when(Time.now >= time, &block)
  end

  def expires_when(condition, &block)
    if !condition
      yield
    else
      message = ExpireCode.formatted_exception(condition, caller[1..NUM_STACKTRACE_LINES].join("\n"))
      ExpireCode.alert(message)
      yield
    end
  end

end
