##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Numbers
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#

module Twilio
    module REST
        class Numbers
            class V2 < Version
                ##
                # Initialize the V2 version of Numbers
                def initialize(domain)
                    super
                    @version = 'v2'
                    @regulatory_compliance = nil
                end

                ##
                # @return [Twilio::REST::Numbers::V2::RegulatoryComplianceList]
                def regulatory_compliance
                    @regulatory_compliance ||= RegulatoryComplianceList.new self
                end
                ##
                # Provide a user friendly representation
                def to_s
                    '<Twilio::REST::Numbers::V2>';
                end
            end
        end
    end
end
