#
# Autogenerated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'fish_types'

module Fishing
  class Client
    include ::Thrift::Client

    def getfishes(url, timeout2)
      send_getfishes(url, timeout2)
      return recv_getfishes()
    end

    def send_getfishes(url, timeout2)
      send_message('getfishes', Getfishes_args, :url => url, :timeout2 => timeout2)
    end

    def recv_getfishes()
      result = receive_message(Getfishes_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getfishes failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_getfishes(seqid, iprot, oprot)
      args = read_args(iprot, Getfishes_args)
      result = Getfishes_result.new()
      result.success = @handler.getfishes(args.url, args.timeout2)
      write_result(result, oprot, 'getfishes', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Getfishes_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    URL = 1
    TIMEOUT2 = 2

    FIELDS = {
      URL => {:type => ::Thrift::Types::STRING, :name => 'url'},
      TIMEOUT2 => {:type => ::Thrift::Types::I32, :name => 'timeout2'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Getfishes_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Result}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

