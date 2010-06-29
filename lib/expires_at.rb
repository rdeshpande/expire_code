module Expires

  def self.formatted_exception(time, offending_line)
    "[#{Time.now}] [EXPIRED CODE]: #{offending_line}"
  end

  def self.alert(message)
    if defined?(Rails)
      case Rails.env
      when /production|development/ then logger.warn(message) if defined?(logger)
      when 'test' then raise message
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
      message = ExpiresAt.formatted_exception(condition, caller[1])
      ExpiresAt.alert(message)
      yield
    end
  end

end
