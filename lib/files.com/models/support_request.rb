# frozen_string_literal: true

module Files
  class SupportRequest
    attr_reader :options, :attributes

    def initialize(attributes = {}, options = {})
      @attributes = attributes || {}
      @options = options || {}
    end

    # int64 - ID
    def id
      @attributes[:id]
    end

    def id=(value)
      @attributes[:id] = value
    end

    # string - Subject of the support request.
    def subject
      @attributes[:subject]
    end

    def subject=(value)
      @attributes[:subject] = value
    end

    # string - Main body of the support request.
    def comment
      @attributes[:comment]
    end

    def comment=(value)
      @attributes[:comment] = value
    end

    # string - Enable Customer Success access to your user account?
    def customer_success_access
      @attributes[:customer_success_access]
    end

    def customer_success_access=(value)
      @attributes[:customer_success_access] = value
    end

    # string - Priority. Can be `low` (e.g. general or billing/acount questions), `normal` (e.g. the system is impaired), `high` (e.g. a production workflow or business process is impaired), `urgent` (e.g. a production workflow or business process is down), `critical` (e.g. a business-critical workflow or business process is down)
    def priority
      @attributes[:priority]
    end

    def priority=(value)
      @attributes[:priority] = value
    end

    # string - Email address of the user requesting support.
    def email
      @attributes[:email]
    end

    def email=(value)
      @attributes[:email] = value
    end

    # array(file) - Files to send to Customer Success along with this support request
    def attachments_files
      @attributes[:attachments_files]
    end

    def attachments_files=(value)
      @attributes[:attachments_files] = value
    end

    def save
      if @attributes[:id]
        raise NotImplementedError.new("The SupportRequest object doesn't support updates.")
      else
        new_obj = SupportRequest.create(@attributes, @options)
        @attributes = new_obj.attributes
      end
    end

    # Parameters:
    #   email (required) - string - Email address of the user requesting support.
    #   subject (required) - string - Subject of the support request.
    #   comment (required) - string - Main body of the support request.
    #   customer_success_access - string - Enable Customer Success access to your user account?
    #   priority - string - Priority. Can be `low` (e.g. general or billing/acount questions), `normal` (e.g. the system is impaired), `high` (e.g. a production workflow or business process is impaired), `urgent` (e.g. a production workflow or business process is down), `critical` (e.g. a business-critical workflow or business process is down)
    #   attachments_files - array - Files to send to Customer Success along with this support request
    def self.create(params = {}, options = {})
      raise InvalidParameterError.new("Bad parameter: email must be an String") if params.dig(:email) and !params.dig(:email).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: subject must be an String") if params.dig(:subject) and !params.dig(:subject).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: comment must be an String") if params.dig(:comment) and !params.dig(:comment).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: customer_success_access must be an String") if params.dig(:customer_success_access) and !params.dig(:customer_success_access).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: priority must be an String") if params.dig(:priority) and !params.dig(:priority).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: attachments_files must be an Array") if params.dig(:attachments_files) and !params.dig(:attachments_files).is_a?(Array)
      raise MissingParameterError.new("Parameter missing: email") unless params.dig(:email)
      raise MissingParameterError.new("Parameter missing: subject") unless params.dig(:subject)
      raise MissingParameterError.new("Parameter missing: comment") unless params.dig(:comment)

      response, options = Api.send_request("/support_requests", :post, params, options)
      SupportRequest.new(response.data, options)
    end
  end
end