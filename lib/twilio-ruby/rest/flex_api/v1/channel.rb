##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class FlexApi < Domain
      class V1 < Version
        class ChannelList < ListResource
          ##
          # Initialize the ChannelList
          # @param [Version] version Version that contains the resource
          # @return [ChannelList] ChannelList
          def initialize(version)
            super(version)

            # Path Solution
            @solution = {}
            @uri = "/Channels"
          end

          ##
          # Lists ChannelInstance records from the API as a list.
          # Unlike stream(), this operation is eager and will load `limit` records into
          # memory before returning.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit.  Default is no limit
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records.  If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Array] Array of up to limit results
          def list(limit: nil, page_size: nil)
            self.stream(limit: limit, page_size: page_size).entries
          end

          ##
          # Streams ChannelInstance records from the API as an Enumerable.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          # @param [Integer] limit Upper limit for the number of records to return. stream()
          #    guarantees to never return more than limit. Default is no limit.
          # @param [Integer] page_size Number of records to fetch per request, when
          #    not set will use the default value of 50 records. If no page_size is defined
          #    but a limit is defined, stream() will attempt to read the limit with the most
          #    efficient page size, i.e. min(limit, 1000)
          # @return [Enumerable] Enumerable that will yield up to limit results
          def stream(limit: nil, page_size: nil)
            limits = @version.read_limits(limit, page_size)

            page = self.page(page_size: limits[:page_size], )

            @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
          end

          ##
          # When passed a block, yields ChannelInstance records from the API.
          # This operation lazily loads records as efficiently as possible until the limit
          # is reached.
          def each
            limits = @version.read_limits

            page = self.page(page_size: limits[:page_size], )

            @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
          end

          ##
          # Retrieve a single page of ChannelInstance records from the API.
          # Request is executed immediately.
          # @param [String] page_token PageToken provided by the API
          # @param [Integer] page_number Page Number, this value is simply for client state
          # @param [Integer] page_size Number of records to return, defaults to 50
          # @return [Page] Page of ChannelInstance
          def page(page_token: :unset, page_number: :unset, page_size: :unset)
            params = Twilio::Values.of({
                'PageToken' => page_token,
                'Page' => page_number,
                'PageSize' => page_size,
            })
            response = @version.page(
                'GET',
                @uri,
                params
            )
            ChannelPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of ChannelInstance records from the API.
          # Request is executed immediately.
          # @param [String] target_url API-generated URL for the requested results page
          # @return [Page] Page of ChannelInstance
          def get_page(target_url)
            response = @version.domain.request(
                'GET',
                target_url
            )
            ChannelPage.new(@version, response, @solution)
          end

          ##
          # Retrieve a single page of ChannelInstance records from the API.
          # Request is executed immediately.
          # @param [String] flex_flow_sid The unique ID of the FlexFlow
          # @param [String] identity Chat User identity
          # @param [String] chat_user_friendly_name Customer friendly name (chat
          #   participant)
          # @param [String] chat_friendly_name Chat channel friendly name
          # @param [String] target Target Contact Identity, for example phone number for SMS
          # @param [String] chat_unique_name Chat channel unique name
          # @param [String] pre_engagement_data Pre-engagement data
          # @param [String] task_sid The unique SID identifier of the Taskrouter task
          # @param [String] task_attributes Task attributes to be added for the TaskRouter
          #   Task
          # @param [Boolean] long_lived Boolean flag determining whether channel is created
          #   as long lived or not
          # @return [ChannelInstance] Newly created ChannelInstance
          def create(flex_flow_sid: nil, identity: nil, chat_user_friendly_name: nil, chat_friendly_name: nil, target: :unset, chat_unique_name: :unset, pre_engagement_data: :unset, task_sid: :unset, task_attributes: :unset, long_lived: :unset)
            data = Twilio::Values.of({
                'FlexFlowSid' => flex_flow_sid,
                'Identity' => identity,
                'ChatUserFriendlyName' => chat_user_friendly_name,
                'ChatFriendlyName' => chat_friendly_name,
                'Target' => target,
                'ChatUniqueName' => chat_unique_name,
                'PreEngagementData' => pre_engagement_data,
                'TaskSid' => task_sid,
                'TaskAttributes' => task_attributes,
                'LongLived' => long_lived,
            })

            payload = @version.create(
                'POST',
                @uri,
                data: data
            )

            ChannelInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '#<Twilio.FlexApi.V1.ChannelList>'
          end
        end

        class ChannelPage < Page
          ##
          # Initialize the ChannelPage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [ChannelPage] ChannelPage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of ChannelInstance
          # @param [Hash] payload Payload response from the API
          # @return [ChannelInstance] ChannelInstance
          def get_instance(payload)
            ChannelInstance.new(@version, payload, )
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.FlexApi.V1.ChannelPage>'
          end
        end

        class ChannelContext < InstanceContext
          ##
          # Initialize the ChannelContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid The unique SID identifier of the Flex Chat Channel
          # @return [ChannelContext] ChannelContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = {sid: sid, }
            @uri = "/Channels/#{@solution[:sid]}"
          end

          ##
          # Fetch a ChannelInstance
          # @return [ChannelInstance] Fetched ChannelInstance
          def fetch
            params = Twilio::Values.of({})

            payload = @version.fetch(
                'GET',
                @uri,
                params,
            )

            ChannelInstance.new(@version, payload, sid: @solution[:sid], )
          end

          ##
          # Deletes the ChannelInstance
          # @return [Boolean] true if delete succeeds, false otherwise
          def delete
            @version.delete('delete', @uri)
          end

          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.ChannelContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.ChannelContext #{context}>"
          end
        end

        class ChannelInstance < InstanceResource
          ##
          # Initialize the ChannelInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] sid The unique SID identifier of the Flex Chat Channel
          # @return [ChannelInstance] ChannelInstance
          def initialize(version, payload, sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
                'account_sid' => payload['account_sid'],
                'flex_flow_sid' => payload['flex_flow_sid'],
                'sid' => payload['sid'],
                'user_sid' => payload['user_sid'],
                'task_sid' => payload['task_sid'],
                'url' => payload['url'],
                'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
            }

            # Context
            @instance_context = nil
            @params = {'sid' => sid || @properties['sid'], }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [ChannelContext] ChannelContext for this ChannelInstance
          def context
            unless @instance_context
              @instance_context = ChannelContext.new(@version, @params['sid'], )
            end
            @instance_context
          end

          ##
          # @return [String] The ID of the account that owns this Workflow
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [String] The unique ID of the FlexFlow
          def flex_flow_sid
            @properties['flex_flow_sid']
          end

          ##
          # @return [String] Flex Chat Channel Sid
          def sid
            @properties['sid']
          end

          ##
          # @return [String] Chat User Sid.
          def user_sid
            @properties['user_sid']
          end

          ##
          # @return [String] TaskRouter Task Sid.
          def task_sid
            @properties['task_sid']
          end

          ##
          # @return [String] The url
          def url
            @properties['url']
          end

          ##
          # @return [Time] The time the Flex Chat Channel was created, given as GMT in ISO 8601 format.
          def date_created
            @properties['date_created']
          end

          ##
          # @return [Time] The time the Flex Chat Channel was last updated, given as GMT in ISO 8601 format.
          def date_updated
            @properties['date_updated']
          end

          ##
          # Fetch a ChannelInstance
          # @return [ChannelInstance] Fetched ChannelInstance
          def fetch
            context.fetch
          end

          ##
          # Deletes the ChannelInstance
          # @return [Boolean] true if delete succeeds, false otherwise
          def delete
            context.delete
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.ChannelInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.ChannelInstance #{values}>"
          end
        end
      end
    end
  end
end