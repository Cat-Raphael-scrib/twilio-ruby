##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Api
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Api < ApiBase
            class V2010 < Version
                class AccountContext < InstanceContext
                class SipList < ListResource

                     class DomainList < ListResource
                    ##
                    # Initialize the DomainList
                    # @param [Version] version Version that contains the resource
                    # @return [DomainList] DomainList
                    def initialize(version, account_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { account_sid: account_sid, }
                        @uri = "/Accounts/#{@solution[:account_sid]}/SIP/Domains.json"
                        
                    end
                    ##
                    # Create the DomainInstance
                    # @param [String] domain_name The unique address you reserve on Twilio to which you route your SIP traffic. Domain names can contain letters, digits, and \\\"-\\\" and must end with `sip.twilio.com`.
                    # @param [String] friendly_name A descriptive string that you created to describe the resource. It can be up to 64 characters long.
                    # @param [String] voice_url The URL we should when the domain receives a call.
                    # @param [String] voice_method The HTTP method we should use to call `voice_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_fallback_url The URL that we should call when an error occurs while retrieving or executing the TwiML from `voice_url`.
                    # @param [String] voice_fallback_method The HTTP method we should use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_status_callback_url The URL that we should call to pass status parameters (such as call ended) to your application.
                    # @param [String] voice_status_callback_method The HTTP method we should use to call `voice_status_callback_url`. Can be: `GET` or `POST`.
                    # @param [Boolean] sip_registration Whether to allow SIP Endpoints to register with the domain to receive calls. Can be `true` or `false`. `true` allows SIP Endpoints to register with the domain to receive calls, `false` does not.
                    # @param [Boolean] emergency_calling_enabled Whether emergency calling is enabled for the domain. If enabled, allows emergency calls on the domain from phone numbers with validated addresses.
                    # @param [Boolean] secure Whether secure SIP is enabled for the domain. If enabled, TLS will be enforced and SRTP will be negotiated on all incoming calls to this sip domain.
                    # @param [String] byoc_trunk_sid The SID of the BYOC Trunk(Bring Your Own Carrier) resource that the Sip Domain will be associated with.
                    # @param [String] emergency_caller_sid Whether an emergency caller sid is configured for the domain. If present, this phone number will be used as the callback for the emergency call.
                    # @return [DomainInstance] Created DomainInstance
                    def create(
                        domain_name: nil, 
                        friendly_name: :unset, 
                        voice_url: :unset, 
                        voice_method: :unset, 
                        voice_fallback_url: :unset, 
                        voice_fallback_method: :unset, 
                        voice_status_callback_url: :unset, 
                        voice_status_callback_method: :unset, 
                        sip_registration: :unset, 
                        emergency_calling_enabled: :unset, 
                        secure: :unset, 
                        byoc_trunk_sid: :unset, 
                        emergency_caller_sid: :unset
                    )

                        data = Twilio::Values.of({
                            'DomainName' => domain_name,
                            'FriendlyName' => friendly_name,
                            'VoiceUrl' => voice_url,
                            'VoiceMethod' => voice_method,
                            'VoiceFallbackUrl' => voice_fallback_url,
                            'VoiceFallbackMethod' => voice_fallback_method,
                            'VoiceStatusCallbackUrl' => voice_status_callback_url,
                            'VoiceStatusCallbackMethod' => voice_status_callback_method,
                            'SipRegistration' => sip_registration,
                            'EmergencyCallingEnabled' => emergency_calling_enabled,
                            'Secure' => secure,
                            'ByocTrunkSid' => byoc_trunk_sid,
                            'EmergencyCallerSid' => emergency_caller_sid,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        DomainInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                        )
                    end

                
                    ##
                    # Lists DomainInstance records from the API as a list.
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
                        self.stream(
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields DomainInstance records from the API.
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
                    # Retrieve a single page of DomainInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of DomainInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        DomainPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of DomainInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of DomainInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    DomainPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Api.V2010.DomainList>'
                    end
                end

                class DomainContext < InstanceContext
                    ##
                    # Initialize the DomainContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the SipDomain resource to update.
                    # @param [String] sid The Twilio-provided string that uniquely identifies the SipDomain resource to update.
                    # @return [DomainContext] DomainContext
                    def initialize(version, account_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { account_sid: account_sid, sid: sid,  }
                        @uri = "/Accounts/#{@solution[:account_sid]}/SIP/Domains/#{@solution[:sid]}.json"

                        # Dependents
                        @auth = nil
                        @ip_access_control_list_mappings = nil
                        @credential_list_mappings = nil
                    end
                    ##
                    # Delete the DomainInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the DomainInstance
                    # @return [DomainInstance] Fetched DomainInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        DomainInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the DomainInstance
                    # @param [String] friendly_name A descriptive string that you created to describe the resource. It can be up to 64 characters long.
                    # @param [String] voice_fallback_method The HTTP method we should use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_fallback_url The URL that we should call when an error occurs while retrieving or executing the TwiML requested by `voice_url`.
                    # @param [String] voice_method The HTTP method we should use to call `voice_url`
                    # @param [String] voice_status_callback_method The HTTP method we should use to call `voice_status_callback_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_status_callback_url The URL that we should call to pass status parameters (such as call ended) to your application.
                    # @param [String] voice_url The URL we should call when the domain receives a call.
                    # @param [Boolean] sip_registration Whether to allow SIP Endpoints to register with the domain to receive calls. Can be `true` or `false`. `true` allows SIP Endpoints to register with the domain to receive calls, `false` does not.
                    # @param [String] domain_name The unique address you reserve on Twilio to which you route your SIP traffic. Domain names can contain letters, digits, and \\\"-\\\" and must end with `sip.twilio.com`.
                    # @param [Boolean] emergency_calling_enabled Whether emergency calling is enabled for the domain. If enabled, allows emergency calls on the domain from phone numbers with validated addresses.
                    # @param [Boolean] secure Whether secure SIP is enabled for the domain. If enabled, TLS will be enforced and SRTP will be negotiated on all incoming calls to this sip domain.
                    # @param [String] byoc_trunk_sid The SID of the BYOC Trunk(Bring Your Own Carrier) resource that the Sip Domain will be associated with.
                    # @param [String] emergency_caller_sid Whether an emergency caller sid is configured for the domain. If present, this phone number will be used as the callback for the emergency call.
                    # @return [DomainInstance] Updated DomainInstance
                    def update(
                        friendly_name: :unset, 
                        voice_fallback_method: :unset, 
                        voice_fallback_url: :unset, 
                        voice_method: :unset, 
                        voice_status_callback_method: :unset, 
                        voice_status_callback_url: :unset, 
                        voice_url: :unset, 
                        sip_registration: :unset, 
                        domain_name: :unset, 
                        emergency_calling_enabled: :unset, 
                        secure: :unset, 
                        byoc_trunk_sid: :unset, 
                        emergency_caller_sid: :unset
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'VoiceFallbackMethod' => voice_fallback_method,
                            'VoiceFallbackUrl' => voice_fallback_url,
                            'VoiceMethod' => voice_method,
                            'VoiceStatusCallbackMethod' => voice_status_callback_method,
                            'VoiceStatusCallbackUrl' => voice_status_callback_url,
                            'VoiceUrl' => voice_url,
                            'SipRegistration' => sip_registration,
                            'DomainName' => domain_name,
                            'EmergencyCallingEnabled' => emergency_calling_enabled,
                            'Secure' => secure,
                            'ByocTrunkSid' => byoc_trunk_sid,
                            'EmergencyCallerSid' => emergency_caller_sid,
                        })

                        payload = @version.update('POST', @uri, data: data)
                        DomainInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the auth
                    # @return [AuthTypesList]
                    # @return [AuthTypesContext]
                    def auth
                      unless @auth
                        @auth = AuthTypesList.new(
                                @version,
                                account_sid: @solution[:account_sid],
                                domain_sid: @solution[:sid]
                                
                                )
                      end

                      @auth
                    end
                    ##
                    # Access the ip_access_control_list_mappings
                    # @return [IpAccessControlListMappingList]
                    # @return [IpAccessControlListMappingContext] if sid was passed.
                    def ip_access_control_list_mappings(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return IpAccessControlListMappingContext.new(@version, @solution[:account_sid], @solution[:sid],sid )
                        end

                        unless @ip_access_control_list_mappings
                            @ip_access_control_list_mappings = IpAccessControlListMappingList.new(
                                @version,
                                account_sid: @solution[:account_sid],
                                domain_sid: @solution[:sid]
                                
                                )
                        end

                     @ip_access_control_list_mappings
                    end
                    ##
                    # Access the credential_list_mappings
                    # @return [CredentialListMappingList]
                    # @return [CredentialListMappingContext] if sid was passed.
                    def credential_list_mappings(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return CredentialListMappingContext.new(@version, @solution[:account_sid], @solution[:sid],sid )
                        end

                        unless @credential_list_mappings
                            @credential_list_mappings = CredentialListMappingList.new(
                                @version,
                                account_sid: @solution[:account_sid],
                                domain_sid: @solution[:sid]
                                
                                )
                        end

                     @credential_list_mappings
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.DomainContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.DomainContext #{context}>"
                    end
                end

                class DomainPage < Page
                    ##
                    # Initialize the DomainPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [DomainPage] DomainPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of DomainInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [DomainInstance] DomainInstance
                    def get_instance(payload)
                        DomainInstance.new(@version, payload, account_sid: @solution[:account_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Api.V2010.DomainPage>'
                    end
                end
                class DomainInstance < InstanceResource
                    ##
                    # Initialize the DomainInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Domain
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [DomainInstance] DomainInstance
                    def initialize(version, payload , account_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'api_version' => payload['api_version'],
                            'auth_type' => payload['auth_type'],
                            'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                            'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                            'domain_name' => payload['domain_name'],
                            'friendly_name' => payload['friendly_name'],
                            'sid' => payload['sid'],
                            'uri' => payload['uri'],
                            'voice_fallback_method' => payload['voice_fallback_method'],
                            'voice_fallback_url' => payload['voice_fallback_url'],
                            'voice_method' => payload['voice_method'],
                            'voice_status_callback_method' => payload['voice_status_callback_method'],
                            'voice_status_callback_url' => payload['voice_status_callback_url'],
                            'voice_url' => payload['voice_url'],
                            'subresource_uris' => payload['subresource_uris'],
                            'sip_registration' => payload['sip_registration'],
                            'emergency_calling_enabled' => payload['emergency_calling_enabled'],
                            'secure' => payload['secure'],
                            'byoc_trunk_sid' => payload['byoc_trunk_sid'],
                            'emergency_caller_sid' => payload['emergency_caller_sid'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'account_sid' => account_sid  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [DomainContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = DomainContext.new(@version , @params['account_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the SipDomain resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The API version used to process the call.
                    def api_version
                        @properties['api_version']
                    end
                    
                    ##
                    # @return [String] The types of authentication you have mapped to your domain. Can be: `IP_ACL` and `CREDENTIAL_LIST`. If you have both defined for your domain, both will be returned in a comma delimited string. If `auth_type` is not defined, the domain will not be able to receive any traffic.
                    def auth_type
                        @properties['auth_type']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The unique address you reserve on Twilio to which you route your SIP traffic. Domain names can contain letters, digits, and \"-\" and must end with `sip.twilio.com`.
                    def domain_name
                        @properties['domain_name']
                    end
                    
                    ##
                    # @return [String] The string that you assigned to describe the resource.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] The unique string that that we created to identify the SipDomain resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The URI of the resource, relative to `https://api.twilio.com`.
                    def uri
                        @properties['uri']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    def voice_fallback_method
                        @properties['voice_fallback_method']
                    end
                    
                    ##
                    # @return [String] The URL that we call when an error occurs while retrieving or executing the TwiML requested from `voice_url`.
                    def voice_fallback_url
                        @properties['voice_fallback_url']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
                    def voice_method
                        @properties['voice_method']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `voice_status_callback_url`. Either `GET` or `POST`.
                    def voice_status_callback_method
                        @properties['voice_status_callback_method']
                    end
                    
                    ##
                    # @return [String] The URL that we call to pass status parameters (such as call ended) to your application.
                    def voice_status_callback_url
                        @properties['voice_status_callback_url']
                    end
                    
                    ##
                    # @return [String] The URL we call using the `voice_method` when the domain receives a call.
                    def voice_url
                        @properties['voice_url']
                    end
                    
                    ##
                    # @return [Hash] A list of mapping resources associated with the SIP Domain resource identified by their relative URIs.
                    def subresource_uris
                        @properties['subresource_uris']
                    end
                    
                    ##
                    # @return [Boolean] Whether to allow SIP Endpoints to register with the domain to receive calls.
                    def sip_registration
                        @properties['sip_registration']
                    end
                    
                    ##
                    # @return [Boolean] Whether emergency calling is enabled for the domain. If enabled, allows emergency calls on the domain from phone numbers with validated addresses.
                    def emergency_calling_enabled
                        @properties['emergency_calling_enabled']
                    end
                    
                    ##
                    # @return [Boolean] Whether secure SIP is enabled for the domain. If enabled, TLS will be enforced and SRTP will be negotiated on all incoming calls to this sip domain.
                    def secure
                        @properties['secure']
                    end
                    
                    ##
                    # @return [String] The SID of the BYOC Trunk(Bring Your Own Carrier) resource that the Sip Domain will be associated with.
                    def byoc_trunk_sid
                        @properties['byoc_trunk_sid']
                    end
                    
                    ##
                    # @return [String] Whether an emergency caller sid is configured for the domain. If present, this phone number will be used as the callback for the emergency call.
                    def emergency_caller_sid
                        @properties['emergency_caller_sid']
                    end
                    
                    ##
                    # Delete the DomainInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the DomainInstance
                    # @return [DomainInstance] Fetched DomainInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the DomainInstance
                    # @param [String] friendly_name A descriptive string that you created to describe the resource. It can be up to 64 characters long.
                    # @param [String] voice_fallback_method The HTTP method we should use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_fallback_url The URL that we should call when an error occurs while retrieving or executing the TwiML requested by `voice_url`.
                    # @param [String] voice_method The HTTP method we should use to call `voice_url`
                    # @param [String] voice_status_callback_method The HTTP method we should use to call `voice_status_callback_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_status_callback_url The URL that we should call to pass status parameters (such as call ended) to your application.
                    # @param [String] voice_url The URL we should call when the domain receives a call.
                    # @param [Boolean] sip_registration Whether to allow SIP Endpoints to register with the domain to receive calls. Can be `true` or `false`. `true` allows SIP Endpoints to register with the domain to receive calls, `false` does not.
                    # @param [String] domain_name The unique address you reserve on Twilio to which you route your SIP traffic. Domain names can contain letters, digits, and \\\"-\\\" and must end with `sip.twilio.com`.
                    # @param [Boolean] emergency_calling_enabled Whether emergency calling is enabled for the domain. If enabled, allows emergency calls on the domain from phone numbers with validated addresses.
                    # @param [Boolean] secure Whether secure SIP is enabled for the domain. If enabled, TLS will be enforced and SRTP will be negotiated on all incoming calls to this sip domain.
                    # @param [String] byoc_trunk_sid The SID of the BYOC Trunk(Bring Your Own Carrier) resource that the Sip Domain will be associated with.
                    # @param [String] emergency_caller_sid Whether an emergency caller sid is configured for the domain. If present, this phone number will be used as the callback for the emergency call.
                    # @return [DomainInstance] Updated DomainInstance
                    def update(
                        friendly_name: :unset, 
                        voice_fallback_method: :unset, 
                        voice_fallback_url: :unset, 
                        voice_method: :unset, 
                        voice_status_callback_method: :unset, 
                        voice_status_callback_url: :unset, 
                        voice_url: :unset, 
                        sip_registration: :unset, 
                        domain_name: :unset, 
                        emergency_calling_enabled: :unset, 
                        secure: :unset, 
                        byoc_trunk_sid: :unset, 
                        emergency_caller_sid: :unset
                    )

                        context.update(
                            friendly_name: friendly_name, 
                            voice_fallback_method: voice_fallback_method, 
                            voice_fallback_url: voice_fallback_url, 
                            voice_method: voice_method, 
                            voice_status_callback_method: voice_status_callback_method, 
                            voice_status_callback_url: voice_status_callback_url, 
                            voice_url: voice_url, 
                            sip_registration: sip_registration, 
                            domain_name: domain_name, 
                            emergency_calling_enabled: emergency_calling_enabled, 
                            secure: secure, 
                            byoc_trunk_sid: byoc_trunk_sid, 
                            emergency_caller_sid: emergency_caller_sid, 
                        )
                    end

                    ##
                    # Access the auth
                    # @return [auth] auth
                    def auth
                        context.auth
                    end

                    ##
                    # Access the ip_access_control_list_mappings
                    # @return [ip_access_control_list_mappings] ip_access_control_list_mappings
                    def ip_access_control_list_mappings
                        context.ip_access_control_list_mappings
                    end

                    ##
                    # Access the credential_list_mappings
                    # @return [credential_list_mappings] credential_list_mappings
                    def credential_list_mappings
                        context.credential_list_mappings
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.DomainInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.DomainInstance #{values}>"
                    end
                end
             end
             end
            end
        end
    end
end


