module ExpiresAt

  def self.formatted_exception(time, offending_line)
    "[EXPIRED CODE AS OF #{time.to_s}]: #{offending_line}"
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
    if Time.now < time
      yield
    else
      message = ExpiresAt.formatted_exception(time, caller.first)
      ExpiresAt.alert(message)
      yield
    end
  end

end
