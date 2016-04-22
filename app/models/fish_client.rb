#encoding:utf-8

class FishClient
  def initialize(host="127.0.0.1", port=9090, timeout = 20)
    @host = host
    @port = port
    @timeout = timeout
  end

  def get_result(url)
    begin
      socket = Thrift::Socket.new(@host, @port, @timeout)
      transport = Thrift::FramedTransport.new(socket)
      protocal = Thrift::CompactProtocol.new(transport)
      transport.open
      client = Fishing::Client.new(protocal)
      ret = client.getfishes(url,@timeout);
      return ret
    ensure
      socket.close
      transport.close;
    end

    return nil
  end
end

