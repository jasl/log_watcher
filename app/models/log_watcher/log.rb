# -*- encoding : utf-8 -*-
module LogWatcher
  class Log
    extend LogReader

    def Log.fetch(options = {})
      limit = options[:limit].nil? ? 20 : options[:limit].to_i
      offset_lines = options[:offset].nil? ? 0 : options[:offset].to_i

      result = self.read limit, offset_lines
      result[:records].collect! { |line| line.unpack("C*").pack("U*").gsub!(/\n/, "<br/>") }
      result
    end
  end
end