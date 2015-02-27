require "toolbox/network/wait_for_socket"

require "socket"

RSpec.describe Network, "#wait_for_socket" do
  let(:host) { "127.0.0.1" }
  let(:port) { 28561 }

  it "returns true if socket is open" do
    server = TCPServer.new(host, port)

    expect(Network.wait_for_socket(host, port, 1)).to be_truthy

    server.close
  end

  it "returns false if socket is closed" do
    expect(Network.wait_for_socket(host, port, 0.01)).to be_falsy
  end

  it "waits until the socket is open" do
    server_thread = Thread.new do
      @result = Network.wait_for_socket(host, port, 1)
    end

    expect(@result).to be_falsy
    server = TCPServer.new(host, port)
    sleep 0.11
    server.close

    server_thread.join
    expect(@result).to be_truthy
  end
end
