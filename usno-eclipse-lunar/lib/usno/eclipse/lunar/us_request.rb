require "uri"
require "net/http"

module USNO
  module Eclipse
    module Lunar
      class USRequest < PayDirt::Base
        include USNO::Eclipse::Lunar::Request

        def initialize(options = {})
          options = {
          }.merge(options)

          load_options(:city, :state, :date, options)
        end

        def call
          return result(true, request_response.body)
        end

        private
        def place
          "st=#{USNO::Eclipse::Lunar::States.by_key_or_value(@state)}&place=#{@city}&hh1=#{@z_meters}"
        end



        def request_body
          %W{
            FFX=1
            xxecl=#{USNO::Eclipse::Lunar::Eclipses.fetch(@date)}
            #{place}
            ZZZ=END
          }.join("&")
        end
      end
    end
  end
end
