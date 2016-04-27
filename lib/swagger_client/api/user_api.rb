require "uri"

module SwaggerClient
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create user
    # This can only be done by the logged in user.
    # @param body Created user object
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_user(body, opts = {})
      create_user_with_http_info(body, opts)
      return nil
    end

    # Create user
    # This can only be done by the logged in user.
    # @param body Created user object
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_user_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#create_user ..."
      end
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling create_user" if body.nil?
      
      # resource path
      path = "/user".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates list of users with given input array
    # 
    # @param body List of user object
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_users_with_array_input(body, opts = {})
      create_users_with_array_input_with_http_info(body, opts)
      return nil
    end

    # Creates list of users with given input array
    # 
    # @param body List of user object
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_users_with_array_input_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#create_users_with_array_input ..."
      end
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling create_users_with_array_input" if body.nil?
      
      # resource path
      path = "/user/createWithArray".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_users_with_array_input\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates list of users with given input array
    # 
    # @param body List of user object
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_users_with_list_input(body, opts = {})
      create_users_with_list_input_with_http_info(body, opts)
      return nil
    end

    # Creates list of users with given input array
    # 
    # @param body List of user object
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_users_with_list_input_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#create_users_with_list_input ..."
      end
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling create_users_with_list_input" if body.nil?
      
      # resource path
      path = "/user/createWithList".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#create_users_with_list_input\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Logs user into the system
    # 
    # @param username The user name for login
    # @param password The password for login in clear text
    # @param [Hash] opts the optional parameters
    # @return [String]
    def login_user(username, password, opts = {})
      data, status_code, headers = login_user_with_http_info(username, password, opts)
      return data
    end

    # Logs user into the system
    # 
    # @param username The user name for login
    # @param password The password for login in clear text
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def login_user_with_http_info(username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#login_user ..."
      end
      
      # verify the required parameter 'username' is set
      fail "Missing the required parameter 'username' when calling login_user" if username.nil?
      
      # verify the required parameter 'password' is set
      fail "Missing the required parameter 'password' when calling login_user" if password.nil?
      
      # resource path
      path = "/user/login".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'username'] = username
      query_params[:'password'] = password

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#login_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Logs out current logged in user session
    # 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def logout_user(opts = {})
      logout_user_with_http_info(opts)
      return nil
    end

    # Logs out current logged in user session
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def logout_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#logout_user ..."
      end
      
      # resource path
      path = "/user/logout".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#logout_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get user by user name
    # 
    # @param username The name that needs to be fetched. Use user1 for testing.
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user_by_name(username, opts = {})
      data, status_code, headers = get_user_by_name_with_http_info(username, opts)
      return data
    end

    # Get user by user name
    # 
    # @param username The name that needs to be fetched. Use user1 for testing.
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_user_by_name_with_http_info(username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#get_user_by_name ..."
      end
      
      # verify the required parameter 'username' is set
      fail "Missing the required parameter 'username' when calling get_user_by_name" if username.nil?
      
      # resource path
      path = "/user/{username}".sub('{format}','json').sub('{' + 'username' + '}', username.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_by_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updated user
    # This can only be done by the logged in user.
    # @param username name that need to be updated
    # @param body Updated user object
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_user(username, body, opts = {})
      update_user_with_http_info(username, body, opts)
      return nil
    end

    # Updated user
    # This can only be done by the logged in user.
    # @param username name that need to be updated
    # @param body Updated user object
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_user_with_http_info(username, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#update_user ..."
      end
      
      # verify the required parameter 'username' is set
      fail "Missing the required parameter 'username' when calling update_user" if username.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling update_user" if body.nil?
      
      # resource path
      path = "/user/{username}".sub('{format}','json').sub('{' + 'username' + '}', username.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete user
    # This can only be done by the logged in user.
    # @param username The name that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(username, opts = {})
      delete_user_with_http_info(username, opts)
      return nil
    end

    # Delete user
    # This can only be done by the logged in user.
    # @param username The name that needs to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(username, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi#delete_user ..."
      end
      
      # verify the required parameter 'username' is set
      fail "Missing the required parameter 'username' when calling delete_user" if username.nil?
      
      # resource path
      path = "/user/{username}".sub('{format}','json').sub('{' + 'username' + '}', username.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/xml', 'application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end




