##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Studio
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Studio < StudioBase
            class V1 < Version
                class FlowContext < InstanceContext
                class EngagementContext < InstanceContext

                     class EngagementContextList < ListResource
                    ##
                    # Initialize the EngagementContextList
                    # @param [Version] version Version that contains the resource
                    # @return [EngagementContextList] EngagementContextList
                    def initialize(version, flow_sid: nil, engagement_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { flow_sid: flow_sid,engagement_sid: engagement_sid, }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Studio.V1.EngagementContextList>'
                    end
                end

                class EngagementContextContext < InstanceContext
                    ##
                    # Initialize the EngagementContextContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] flow_sid The SID of the Flow.
                    # @param [String] engagement_sid The SID of the Engagement.
                    # @return [EngagementContextContext] EngagementContextContext
                    def initialize(version, flow_sid, engagement_sid)
                        super(version)

                        # Path Solution
                        @solution = { flow_sid: flow_sid, engagement_sid: engagement_sid,  }
                        @uri = "/Flows/#{@solution[:flow_sid]}/Engagements/#{@solution[:engagement_sid]}/Context"

                        
                    end
                    ##
                    # Fetch the EngagementContextInstance
                    # @return [EngagementContextInstance] Fetched EngagementContextInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        EngagementContextInstance.new(
                            @version,
                            payload,
                            flow_sid: @solution[:flow_sid],
                            engagement_sid: @solution[:engagement_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Studio.V1.EngagementContextContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Studio.V1.EngagementContextContext #{context}>"
                    end
                end

                class EngagementContextPage < Page
                    ##
                    # Initialize the EngagementContextPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [EngagementContextPage] EngagementContextPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of EngagementContextInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [EngagementContextInstance] EngagementContextInstance
                    def get_instance(payload)
                        EngagementContextInstance.new(@version, payload, flow_sid: @solution[:flow_sid], engagement_sid: @solution[:engagement_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Studio.V1.EngagementContextPage>'
                    end
                end
                class EngagementContextInstance < InstanceResource
                    ##
                    # Initialize the EngagementContextInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this EngagementContext
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [EngagementContextInstance] EngagementContextInstance
                    def initialize(version, payload , flow_sid: nil, engagement_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'context' => payload['context'],
                            'engagement_sid' => payload['engagement_sid'],
                            'flow_sid' => payload['flow_sid'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'flow_sid' => flow_sid  || @properties['flow_sid']  ,'engagement_sid' => engagement_sid  || @properties['engagement_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [EngagementContextContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = EngagementContextContext.new(@version , @params['flow_sid'], @params['engagement_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the Account.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [Hash] As your flow executes, we save the state in what's called the Flow Context. Any data in the flow context can be accessed by your widgets as variables, either in configuration fields or in text areas as variable substitution.
                    def context
                        @properties['context']
                    end
                    
                    ##
                    # @return [String] The SID of the Engagement.
                    def engagement_sid
                        @properties['engagement_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the Flow.
                    def flow_sid
                        @properties['flow_sid']
                    end
                    
                    ##
                    # @return [String] The URL of the resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the EngagementContextInstance
                    # @return [EngagementContextInstance] Fetched EngagementContextInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Studio.V1.EngagementContextInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Studio.V1.EngagementContextInstance #{values}>"
                    end
                end
             end
             end
            end
        end
    end
end


