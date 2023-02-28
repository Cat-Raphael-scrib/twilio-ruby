##
 # This code was generated by
 # ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
 #  |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
 #  |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
 #
 # NOTE: This class is auto generated by OpenAPI Generator.
 # https://openapi-generator.tech
 # Do not edit the class manually.
# frozen_string_literal: true
module Twilio
  module REST
    class FlexApiBase < Domain
      ##
      # Initialize flexApi domain
      #
      # @param twilio - The twilio client
      #
      def initialize(twilio: any)
        super(twilio, "https://flex-api.twilio.com")
        @v1 ||= nil
        @v2 ||= nil
      end

      def v1
        @v1 ||= V1.new self
      end

      def v2
        @v2 ||= V2.new self
      end

      ##
      # Provide a user friendly representation
      def to_s
        '<Twilio::REST::FlexApi>';
      end
    end
  end
end
