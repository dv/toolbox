require 'socket'
require 'timeout'

module Network
  module_function

  # Sourced from http://stackoverflow.com/questions/517219/ruby-see-if-a-port-is-open
  def wait_for_socket(host, port, timeout = 10)
    Timeout::timeout(timeout) do
      begin
        s = TCPSocket.new(host, port)
        s.close
        return true
      rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
        sleep(0.1)
        retry
      end
    end
  rescue Timeout::Error
    return false
  end
end
