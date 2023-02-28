##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Conversations
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Conversations < ConversationsBase
            class V1 < Version
                class ServiceContext < InstanceContext
                class ConfigurationContext < InstanceContext

                     class NotificationList < ListResource
                    ##
                    # Initialize the NotificationList
                    # @param [Version] version Version that contains the resource
                    # @return [NotificationList] NotificationList
                    def initialize(version, chat_service_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { chat_service_sid: chat_service_sid, }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Conversations.V1.NotificationList>'
                    end
                end

                class NotificationContext < InstanceContext
                    ##
                    # Initialize the NotificationContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] chat_service_sid The SID of the [Conversation Service](https://www.twilio.com/docs/conversations/api/service-resource) the Configuration applies to.
                    # @return [NotificationContext] NotificationContext
                    def initialize(version, chat_service_sid)
                        super(version)

                        # Path Solution
                        @solution = { chat_service_sid: chat_service_sid,  }
                        @uri = "/Services/#{@solution[:chat_service_sid]}/Configuration/Notifications"

                        
                    end
                    ##
                    # Fetch the NotificationInstance
                    # @return [NotificationInstance] Fetched NotificationInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        NotificationInstance.new(
                            @version,
                            payload,
                            chat_service_sid: @solution[:chat_service_sid],
                        )
                    end

                    ##
                    # Update the NotificationInstance
                    # @param [Boolean] log_enabled Weather the notification logging is enabled.
                    # @param [Boolean] new_message_enabled Whether to send a notification when a new message is added to a conversation. The default is `false`.
                    # @param [String] new_message_template The template to use to create the notification text displayed when a new message is added to a conversation and `new_message.enabled` is `true`.
                    # @param [String] new_message_sound The name of the sound to play when a new message is added to a conversation and `new_message.enabled` is `true`.
                    # @param [Boolean] new_message_badge_count_enabled Whether the new message badge is enabled. The default is `false`.
                    # @param [Boolean] added_to_conversation_enabled Whether to send a notification when a participant is added to a conversation. The default is `false`.
                    # @param [String] added_to_conversation_template The template to use to create the notification text displayed when a participant is added to a conversation and `added_to_conversation.enabled` is `true`.
                    # @param [String] added_to_conversation_sound The name of the sound to play when a participant is added to a conversation and `added_to_conversation.enabled` is `true`.
                    # @param [Boolean] removed_from_conversation_enabled Whether to send a notification to a user when they are removed from a conversation. The default is `false`.
                    # @param [String] removed_from_conversation_template The template to use to create the notification text displayed to a user when they are removed from a conversation and `removed_from_conversation.enabled` is `true`.
                    # @param [String] removed_from_conversation_sound The name of the sound to play to a user when they are removed from a conversation and `removed_from_conversation.enabled` is `true`.
                    # @param [Boolean] new_message_with_media_enabled Whether to send a notification when a new message with media/file attachments is added to a conversation. The default is `false`.
                    # @param [String] new_message_with_media_template The template to use to create the notification text displayed when a new message with media/file attachments is added to a conversation and `new_message.attachments.enabled` is `true`.
                    # @return [NotificationInstance] Updated NotificationInstance
                    def update(
                        log_enabled: :unset, 
                        new_message_enabled: :unset, 
                        new_message_template: :unset, 
                        new_message_sound: :unset, 
                        new_message_badge_count_enabled: :unset, 
                        added_to_conversation_enabled: :unset, 
                        added_to_conversation_template: :unset, 
                        added_to_conversation_sound: :unset, 
                        removed_from_conversation_enabled: :unset, 
                        removed_from_conversation_template: :unset, 
                        removed_from_conversation_sound: :unset, 
                        new_message_with_media_enabled: :unset, 
                        new_message_with_media_template: :unset
                    )

                        data = Twilio::Values.of({
                            'LogEnabled' => log_enabled,
                            'NewMessage.Enabled' => new_message_enabled,
                            'NewMessage.Template' => new_message_template,
                            'NewMessage.Sound' => new_message_sound,
                            'NewMessage.BadgeCountEnabled' => new_message_badge_count_enabled,
                            'AddedToConversation.Enabled' => added_to_conversation_enabled,
                            'AddedToConversation.Template' => added_to_conversation_template,
                            'AddedToConversation.Sound' => added_to_conversation_sound,
                            'RemovedFromConversation.Enabled' => removed_from_conversation_enabled,
                            'RemovedFromConversation.Template' => removed_from_conversation_template,
                            'RemovedFromConversation.Sound' => removed_from_conversation_sound,
                            'NewMessage.WithMedia.Enabled' => new_message_with_media_enabled,
                            'NewMessage.WithMedia.Template' => new_message_with_media_template,
                        })

                        payload = @version.update('POST', @uri, data: data)
                        NotificationInstance.new(
                            @version,
                            payload,
                            chat_service_sid: @solution[:chat_service_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Conversations.V1.NotificationContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Conversations.V1.NotificationContext #{context}>"
                    end
                end

                class NotificationPage < Page
                    ##
                    # Initialize the NotificationPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [NotificationPage] NotificationPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of NotificationInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [NotificationInstance] NotificationInstance
                    def get_instance(payload)
                        NotificationInstance.new(@version, payload, chat_service_sid: @solution[:chat_service_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Conversations.V1.NotificationPage>'
                    end
                end
                class NotificationInstance < InstanceResource
                    ##
                    # Initialize the NotificationInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Notification
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [NotificationInstance] NotificationInstance
                    def initialize(version, payload , chat_service_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'chat_service_sid' => payload['chat_service_sid'],
                            'new_message' => payload['new_message'],
                            'added_to_conversation' => payload['added_to_conversation'],
                            'removed_from_conversation' => payload['removed_from_conversation'],
                            'log_enabled' => payload['log_enabled'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'chat_service_sid' => chat_service_sid  || @properties['chat_service_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [NotificationContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = NotificationContext.new(@version , @params['chat_service_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique ID of the [Account](https://www.twilio.com/docs/iam/api/account) responsible for this configuration.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Conversation Service](https://www.twilio.com/docs/conversations/api/service-resource) the Configuration applies to.
                    def chat_service_sid
                        @properties['chat_service_sid']
                    end
                    
                    ##
                    # @return [Hash] The Push Notification configuration for New Messages.
                    def new_message
                        @properties['new_message']
                    end
                    
                    ##
                    # @return [Hash] The Push Notification configuration for being added to a Conversation.
                    def added_to_conversation
                        @properties['added_to_conversation']
                    end
                    
                    ##
                    # @return [Hash] The Push Notification configuration for being removed from a Conversation.
                    def removed_from_conversation
                        @properties['removed_from_conversation']
                    end
                    
                    ##
                    # @return [Boolean] Weather the notification logging is enabled.
                    def log_enabled
                        @properties['log_enabled']
                    end
                    
                    ##
                    # @return [String] An absolute API resource URL for this configuration.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Fetch the NotificationInstance
                    # @return [NotificationInstance] Fetched NotificationInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the NotificationInstance
                    # @param [Boolean] log_enabled Weather the notification logging is enabled.
                    # @param [Boolean] new_message_enabled Whether to send a notification when a new message is added to a conversation. The default is `false`.
                    # @param [String] new_message_template The template to use to create the notification text displayed when a new message is added to a conversation and `new_message.enabled` is `true`.
                    # @param [String] new_message_sound The name of the sound to play when a new message is added to a conversation and `new_message.enabled` is `true`.
                    # @param [Boolean] new_message_badge_count_enabled Whether the new message badge is enabled. The default is `false`.
                    # @param [Boolean] added_to_conversation_enabled Whether to send a notification when a participant is added to a conversation. The default is `false`.
                    # @param [String] added_to_conversation_template The template to use to create the notification text displayed when a participant is added to a conversation and `added_to_conversation.enabled` is `true`.
                    # @param [String] added_to_conversation_sound The name of the sound to play when a participant is added to a conversation and `added_to_conversation.enabled` is `true`.
                    # @param [Boolean] removed_from_conversation_enabled Whether to send a notification to a user when they are removed from a conversation. The default is `false`.
                    # @param [String] removed_from_conversation_template The template to use to create the notification text displayed to a user when they are removed from a conversation and `removed_from_conversation.enabled` is `true`.
                    # @param [String] removed_from_conversation_sound The name of the sound to play to a user when they are removed from a conversation and `removed_from_conversation.enabled` is `true`.
                    # @param [Boolean] new_message_with_media_enabled Whether to send a notification when a new message with media/file attachments is added to a conversation. The default is `false`.
                    # @param [String] new_message_with_media_template The template to use to create the notification text displayed when a new message with media/file attachments is added to a conversation and `new_message.attachments.enabled` is `true`.
                    # @return [NotificationInstance] Updated NotificationInstance
                    def update(
                        log_enabled: :unset, 
                        new_message_enabled: :unset, 
                        new_message_template: :unset, 
                        new_message_sound: :unset, 
                        new_message_badge_count_enabled: :unset, 
                        added_to_conversation_enabled: :unset, 
                        added_to_conversation_template: :unset, 
                        added_to_conversation_sound: :unset, 
                        removed_from_conversation_enabled: :unset, 
                        removed_from_conversation_template: :unset, 
                        removed_from_conversation_sound: :unset, 
                        new_message_with_media_enabled: :unset, 
                        new_message_with_media_template: :unset
                    )

                        context.update(
                            log_enabled: log_enabled, 
                            new_message_enabled: new_message_enabled, 
                            new_message_template: new_message_template, 
                            new_message_sound: new_message_sound, 
                            new_message_badge_count_enabled: new_message_badge_count_enabled, 
                            added_to_conversation_enabled: added_to_conversation_enabled, 
                            added_to_conversation_template: added_to_conversation_template, 
                            added_to_conversation_sound: added_to_conversation_sound, 
                            removed_from_conversation_enabled: removed_from_conversation_enabled, 
                            removed_from_conversation_template: removed_from_conversation_template, 
                            removed_from_conversation_sound: removed_from_conversation_sound, 
                            new_message_with_media_enabled: new_message_with_media_enabled, 
                            new_message_with_media_template: new_message_with_media_template, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Conversations.V1.NotificationInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Conversations.V1.NotificationInstance #{values}>"
                    end
                end
             end
             end
            end
        end
    end
end


