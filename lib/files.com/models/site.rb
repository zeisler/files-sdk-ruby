# frozen_string_literal: true

module Files
  class Site
    attr_reader :options, :attributes

    def initialize(attributes = {}, options = {})
      @attributes = attributes || {}
      @options = options || {}
    end

    # boolean - Is SMS two factor authentication allowed?
    def allowed_2fa_method_sms
      @attributes[:allowed_2fa_method_sms]
    end

    # boolean - Is TOTP two factor authentication allowed?
    def allowed_2fa_method_totp
      @attributes[:allowed_2fa_method_totp]
    end

    # boolean - Is U2F two factor authentication allowed?
    def allowed_2fa_method_u2f
      @attributes[:allowed_2fa_method_u2f]
    end

    # boolean - Is yubikey two factor authentication allowed?
    def allowed_2fa_method_yubi
      @attributes[:allowed_2fa_method_yubi]
    end

    # int64 - User ID for the main site administrator
    def admin_user_id
      @attributes[:admin_user_id]
    end

    # string - List of allowed file types
    def allowed_file_types
      @attributes[:allowed_file_types]
    end

    # string - List of allowed IP addresses
    def allowed_ips
      @attributes[:allowed_ips]
    end

    # boolean - If false, rename conflicting files instead of asking for overwrite confirmation.  Only applies to web interface.
    def ask_about_overwrites
      @attributes[:ask_about_overwrites]
    end

    # int64 - Site-wide Bundle expiration in days
    def bundle_expiration
      @attributes[:bundle_expiration]
    end

    # boolean - Do Bundles require password protection?
    def bundle_password_required
      @attributes[:bundle_password_required]
    end

    # string - Page link and button color
    def color2_left
      @attributes[:color2_left]
    end

    # string - Top bar link color
    def color2_link
      @attributes[:color2_link]
    end

    # string - Page link and button color
    def color2_text
      @attributes[:color2_text]
    end

    # string - Top bar background color
    def color2_top
      @attributes[:color2_top]
    end

    # string - Top bar text color
    def color2_top_text
      @attributes[:color2_top_text]
    end

    # date-time - Time this site was created
    def created_at
      @attributes[:created_at]
    end

    # string - Preferred currency
    def currency
      @attributes[:currency]
    end

    # boolean - Is this site using a custom namespace for users?
    def custom_namespace
      @attributes[:custom_namespace]
    end

    # int64 - Number of days to keep deleted files
    def days_to_retain_backups
      @attributes[:days_to_retain_backups]
    end

    # string - Site default time zone
    def default_time_zone
      @attributes[:default_time_zone]
    end

    # boolean - Is the desktop app enabled?
    def desktop_app
      @attributes[:desktop_app]
    end

    # boolean - Is desktop app session IP pinning enabled?
    def desktop_app_session_ip_pinning
      @attributes[:desktop_app_session_ip_pinning]
    end

    # int64 - Desktop app session lifetime (in hours)
    def desktop_app_session_lifetime
      @attributes[:desktop_app_session_lifetime]
    end

    # boolean - Are notifications disabled?
    def disable_notifications
      @attributes[:disable_notifications]
    end

    # boolean - Is password reset disabled?
    def disable_password_reset
      @attributes[:disable_password_reset]
    end

    # string - Custom domain
    def domain
      @attributes[:domain]
    end

    # email - Main email for this site
    def email
      @attributes[:email]
    end

    # boolean - If true, permissions for this site must be bound to a group (not a user). Otherwise, permissions must be bound to a user.
    def folder_permissions_groups_only
      @attributes[:folder_permissions_groups_only]
    end

    # boolean - Is there a signed HIPAA BAA between Files.com and this site?
    def hipaa
      @attributes[:hipaa]
    end

    # Branded icon 128x128
    def icon128
      @attributes[:icon128]
    end

    # Branded icon 16x16
    def icon16
      @attributes[:icon16]
    end

    # Branded icon 32x32
    def icon32
      @attributes[:icon32]
    end

    # Branded icon 48x48
    def icon48
      @attributes[:icon48]
    end

    # date-time - Can files be modified?
    def immutable_files_set_at
      @attributes[:immutable_files_set_at]
    end

    # boolean - Include password in emails to new users?
    def include_password_in_welcome_email
      @attributes[:include_password_in_welcome_email]
    end

    # string - Site default language
    def language
      @attributes[:language]
    end

    # string - Base DN for looking up users in LDAP server
    def ldap_base_dn
      @attributes[:ldap_base_dn]
    end

    # string - Domain name that will be appended to usernames
    def ldap_domain
      @attributes[:ldap_domain]
    end

    # boolean - Main LDAP setting: is LDAP enabled?
    def ldap_enabled
      @attributes[:ldap_enabled]
    end

    # string - Should we sync groups from LDAP server?
    def ldap_group_action
      @attributes[:ldap_group_action]
    end

    # string - Comma or newline separated list of group names (with optional wildcards) to exclude when syncing.
    def ldap_group_exclusion
      @attributes[:ldap_group_exclusion]
    end

    # string - Comma or newline separated list of group names (with optional wildcards) to include when syncing.
    def ldap_group_inclusion
      @attributes[:ldap_group_inclusion]
    end

    # string - LDAP host
    def ldap_host
      @attributes[:ldap_host]
    end

    # string - LDAP backup host
    def ldap_host_2
      @attributes[:ldap_host_2]
    end

    # string - LDAP backup host
    def ldap_host_3
      @attributes[:ldap_host_3]
    end

    # int64 - LDAP port
    def ldap_port
      @attributes[:ldap_port]
    end

    # boolean - Use secure LDAP?
    def ldap_secure
      @attributes[:ldap_secure]
    end

    # string - LDAP type
    def ldap_type
      @attributes[:ldap_type]
    end

    # string - Should we sync users from LDAP server?
    def ldap_user_action
      @attributes[:ldap_user_action]
    end

    # string - Comma or newline separated list of group names (with optional wildcards) - if provided, only users in these groups will be added or synced.
    def ldap_user_include_groups
      @attributes[:ldap_user_include_groups]
    end

    # string - Username for signing in to LDAP server.
    def ldap_username
      @attributes[:ldap_username]
    end

    # string - LDAP username field
    def ldap_username_field
      @attributes[:ldap_username_field]
    end

    # string - Login help text
    def login_help_text
      @attributes[:login_help_text]
    end

    # Branded logo
    def logo
      @attributes[:logo]
    end

    # int64 - Number of prior passwords to disallow
    def max_prior_passwords
      @attributes[:max_prior_passwords]
    end

    # string - Site name
    def name
      @attributes[:name]
    end

    # float - Next billing amount
    def next_billing_amount
      @attributes[:next_billing_amount]
    end

    # string - Next billing date
    def next_billing_date
      @attributes[:next_billing_date]
    end

    # boolean - Use servers in the USA only?
    def opt_out_global
      @attributes[:opt_out_global]
    end

    # date-time - Last time the site was notified about an overage
    def overage_notified_at
      @attributes[:overage_notified_at]
    end

    # boolean - Notify site email of overages?
    def overage_notify
      @attributes[:overage_notify]
    end

    # boolean - Is this site's billing overdue?
    def overdue
      @attributes[:overdue]
    end

    # int64 - Shortest password length for users
    def password_min_length
      @attributes[:password_min_length]
    end

    # boolean - Require a letter in passwords?
    def password_require_letter
      @attributes[:password_require_letter]
    end

    # boolean - Require lower and upper case letters in passwords?
    def password_require_mixed
      @attributes[:password_require_mixed]
    end

    # boolean - Require a number in passwords?
    def password_require_number
      @attributes[:password_require_number]
    end

    # boolean - Require special characters in password?
    def password_require_special
      @attributes[:password_require_special]
    end

    # boolean - Require bundles' passwords to conform to the same requirements as users' passwords?
    def password_requirements_apply_to_bundles
      @attributes[:password_requirements_apply_to_bundles]
    end

    # int64 - Number of days password is valid
    def password_validity_days
      @attributes[:password_validity_days]
    end

    # string - Site phone number
    def phone
      @attributes[:phone]
    end

    # boolean - Require two-factor authentication for all users?
    def require_2fa
      @attributes[:require_2fa]
    end

    # date-time - If set, requirement for two-factor authentication has been scheduled to end on this date-time.
    def require_2fa_stop_time
      @attributes[:require_2fa_stop_time]
    end

    # string - What type of user is required to use two-factor authentication (when require_2fa is set to `true` for this site)?
    def require_2fa_user_type
      @attributes[:require_2fa_user_type]
    end

    # Current session
    def session
      @attributes[:session]
    end

    # boolean - Are sessions locked to the same IP? (i.e. do users need to log in again if they change IPs?)
    def session_pinned_by_ip
      @attributes[:session_pinned_by_ip]
    end

    # boolean - Use user FTP roots also for SFTP?
    def sftp_user_root_enabled
      @attributes[:sftp_user_root_enabled]
    end

    # boolean - Show request access link for users without access?  Currently unused.
    def show_request_access_link
      @attributes[:show_request_access_link]
    end

    # string - Custom site footer text
    def site_footer
      @attributes[:site_footer]
    end

    # string - Custom site header text
    def site_header
      @attributes[:site_header]
    end

    # string - SMTP server hostname or IP
    def smtp_address
      @attributes[:smtp_address]
    end

    # string - SMTP server authentication type
    def smtp_authentication
      @attributes[:smtp_authentication]
    end

    # string - From address to use when mailing through custom SMTP
    def smtp_from
      @attributes[:smtp_from]
    end

    # int64 - SMTP server port
    def smtp_port
      @attributes[:smtp_port]
    end

    # string - SMTP server username
    def smtp_username
      @attributes[:smtp_username]
    end

    # int64 - Session expiry in hours
    def session_expiry
      @attributes[:session_expiry]
    end

    # boolean - Is SSL required?  Disabling this is insecure.
    def ssl_required
      @attributes[:ssl_required]
    end

    # string - Site subdomain
    def subdomain
      @attributes[:subdomain]
    end

    # date-time - If switching plans, when does the new plan take effect?
    def switch_to_plan_date
      @attributes[:switch_to_plan_date]
    end

    # boolean - Is TLS disabled(site setting)?
    def tls_disabled
      @attributes[:tls_disabled]
    end

    # int64 - Number of days left in trial
    def trial_days_left
      @attributes[:trial_days_left]
    end

    # date-time - When does this Site trial expire?
    def trial_until
      @attributes[:trial_until]
    end

    # date-time - Last time this Site was updated
    def updated_at
      @attributes[:updated_at]
    end

    # boolean - Allow uploaders to set `provided_modified_at` for uploaded files?
    def use_provided_modified_at
      @attributes[:use_provided_modified_at]
    end

    # User of current session
    def user
      @attributes[:user]
    end

    # boolean - Will users be locked out after incorrect login attempts?
    def user_lockout
      @attributes[:user_lockout]
    end

    # int64 - How many hours to lock user out for failed password?
    def user_lockout_lock_period
      @attributes[:user_lockout_lock_period]
    end

    # int64 - Number of login tries within `user_lockout_within` hours before users are locked out
    def user_lockout_tries
      @attributes[:user_lockout_tries]
    end

    # int64 - Number of hours for user lockout window
    def user_lockout_within
      @attributes[:user_lockout_within]
    end

    # string - Custom text send in user welcome email
    def welcome_custom_text
      @attributes[:welcome_custom_text]
    end

    # email - Include this email in welcome emails if enabled
    def welcome_email_cc
      @attributes[:welcome_email_cc]
    end

    # boolean - Will the welcome email be sent to new users?
    def welcome_email_enabled
      @attributes[:welcome_email_enabled]
    end

    # string - Does the welcome screen appear?
    def welcome_screen
      @attributes[:welcome_screen]
    end

    # boolean - Does FTP user Windows emulation mode?
    def windows_mode_ftp
      @attributes[:windows_mode_ftp]
    end

    # int64 - If greater than zero, users will unable to login if they do not show activity within this number of days.
    def disable_users_from_inactivity_period_days
      @attributes[:disable_users_from_inactivity_period_days]
    end

    # Change the current billing plan for the site
    #
    # Parameters:
    #   billing_frequency - integer - The billing frequency for the site.  Must be 1(monthly) or 12(annual).
    def update_plan(params = {})
      params ||= {}
      params[:id] = @attributes[:id]
      raise MissingParameterError.new("Current object doesn't have a id") unless @attributes[:id]
      raise InvalidParameterError.new("Bad parameter: id must be an Integer") if params.dig(:id) and !params.dig(:id).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: billing_frequency must be an Integer") if params.dig(:billing_frequency) and !params.dig(:billing_frequency).is_a?(Integer)
      raise MissingParameterError.new("Parameter missing: id") unless params.dig(:id)

      Api.send_request("/site/plan", :patch, params, @options)
    end

    def self.get(params = {}, options = {})
      response, options = Api.send_request("/site", :get, params, options)
      Site.new(response.data, options)
    end

    def self.get_usage(params = {}, options = {})
      response, options = Api.send_request("/site/usage", :get, params, options)
      UsageSnapshot.new(response.data, options)
    end

    def self.get_switch_to_plan(params = {}, options = {})
      response, options = Api.send_request("/site/switch_to_plan", :get, params, options)
      Plan.new(response.data, options)
    end

    # Parameters:
    #   currency - string - Currency.
    def self.get_plan(params = {}, options = {})
      raise InvalidParameterError.new("Bad parameter: currency must be an String") if params.dig(:currency) and !params.dig(:currency).is_a?(String)

      response, options = Api.send_request("/site/plan", :get, params, options)
      Plan.new(response.data, options)
    end

    # Parameters:
    #   paypal_token (required) - string - Billing token for use with paypal.
    def self.get_paypal_express_info(params = {}, options = {})
      raise InvalidParameterError.new("Bad parameter: paypal_token must be an String") if params.dig(:paypal_token) and !params.dig(:paypal_token).is_a?(String)
      raise MissingParameterError.new("Parameter missing: paypal_token") unless params.dig(:paypal_token)

      response, options = Api.send_request("/site/paypal_express_info", :get, params, options)
      PaypalExpressInfo.new(response.data, options)
    end

    # Parameters:
    #   return_to_url (required) - string - URL that paypal express forwards the user to.
    #   plan_id (required) - integer - Plan ID to switch to.
    def self.get_paypal_express(params = {}, options = {})
      raise InvalidParameterError.new("Bad parameter: return_to_url must be an String") if params.dig(:return_to_url) and !params.dig(:return_to_url).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: plan_id must be an Integer") if params.dig(:plan_id) and !params.dig(:plan_id).is_a?(Integer)
      raise MissingParameterError.new("Parameter missing: return_to_url") unless params.dig(:return_to_url)
      raise MissingParameterError.new("Parameter missing: plan_id") unless params.dig(:plan_id)

      response, options = Api.send_request("/site/paypal_express", :get, params, options)
      PaypalExpressUrl.new(response.data, options)
    end

    # Parameters:
    #   name - string - Site name
    #   subdomain - string - Site subdomain
    #   domain - string - Custom domain
    #   email - string - Main email for this site
    #   bundle_expiration - integer - Site-wide Bundle expiration in days
    #   overage_notify - boolean - Notify site email of overages?
    #   welcome_email_enabled - boolean - Will the welcome email be sent to new users?
    #   ask_about_overwrites - boolean - If false, rename conflicting files instead of asking for overwrite confirmation.  Only applies to web interface.
    #   show_request_access_link - boolean - Show request access link for users without access?  Currently unused.
    #   welcome_email_cc - string - Include this email in welcome emails if enabled
    #   welcome_custom_text - string - Custom text send in user welcome email
    #   language - string - Site default language
    #   windows_mode_ftp - boolean - Does FTP user Windows emulation mode?
    #   default_time_zone - string - Site default time zone
    #   desktop_app - boolean - Is the desktop app enabled?
    #   desktop_app_session_ip_pinning - boolean - Is desktop app session IP pinning enabled?
    #   desktop_app_session_lifetime - integer - Desktop app session lifetime (in hours)
    #   folder_permissions_groups_only - boolean - If true, permissions for this site must be bound to a group (not a user). Otherwise, permissions must be bound to a user.
    #   welcome_screen - string - Does the welcome screen appear?
    #   session_expiry - integer - Session expiry in hours
    #   ssl_required - boolean - Is SSL required?  Disabling this is insecure.
    #   tls_disabled - boolean - Is TLS disabled(site setting)?
    #   user_lockout - boolean - Will users be locked out after incorrect login attempts?
    #   user_lockout_tries - integer - Number of login tries within `user_lockout_within` hours before users are locked out
    #   user_lockout_within - integer - Number of hours for user lockout window
    #   user_lockout_lock_period - integer - How many hours to lock user out for failed password?
    #   include_password_in_welcome_email - boolean - Include password in emails to new users?
    #   allowed_file_types - string - List of allowed file types
    #   allowed_ips - string - List of allowed IP addresses
    #   days_to_retain_backups - integer - Number of days to keep deleted files
    #   max_prior_passwords - integer - Number of prior passwords to disallow
    #   password_validity_days - integer - Number of days password is valid
    #   password_min_length - integer - Shortest password length for users
    #   password_require_letter - boolean - Require a letter in passwords?
    #   password_require_mixed - boolean - Require lower and upper case letters in passwords?
    #   password_require_special - boolean - Require special characters in password?
    #   password_require_number - boolean - Require a number in passwords?
    #   sftp_user_root_enabled - boolean - Use user FTP roots also for SFTP?
    #   disable_password_reset - boolean - Is password reset disabled?
    #   immutable_files - boolean - Are files protected from modification?
    #   session_pinned_by_ip - boolean - Are sessions locked to the same IP? (i.e. do users need to log in again if they change IPs?)
    #   bundle_password_required - boolean - Do Bundles require password protection?
    #   password_requirements_apply_to_bundles - boolean - Require bundles' passwords to conform to the same requirements as users' passwords?
    #   opt_out_global - boolean - Use servers in the USA only?
    #   use_provided_modified_at - boolean - Allow uploaders to set `provided_modified_at` for uploaded files?
    #   custom_namespace - boolean - Is this site using a custom namespace for users?
    #   disable_users_from_inactivity_period_days - integer - If greater than zero, users will unable to login if they do not show activity within this number of days.
    #   allowed_2fa_method_sms - boolean - Is SMS two factor authentication allowed?
    #   allowed_2fa_method_u2f - boolean - Is U2F two factor authentication allowed?
    #   allowed_2fa_method_totp - boolean - Is TOTP two factor authentication allowed?
    #   allowed_2fa_method_yubi - boolean - Is yubikey two factor authentication allowed?
    #   require_2fa - boolean - Require two-factor authentication for all users?
    #   require_2fa_user_type - string - What type of user is required to use two-factor authentication (when require_2fa is set to `true` for this site)?
    #   color2_top - string - Top bar background color
    #   color2_left - string - Page link and button color
    #   color2_link - string - Top bar link color
    #   color2_text - string - Page link and button color
    #   color2_top_text - string - Top bar text color
    #   site_header - string - Custom site header text
    #   site_footer - string - Custom site footer text
    #   login_help_text - string - Login help text
    #   icon16 - object - Branded icon 16x16
    #   icon32 - object - Branded icon 32x32
    #   icon48 - object - Branded icon 48x48
    #   icon128 - object - Branded icon 128x128
    #   logo - object - Branded logo
    #   smtp_address - string - SMTP server hostname or IP
    #   smtp_authentication - string - SMTP server authentication type
    #   smtp_from - string - From address to use when mailing through custom SMTP
    #   smtp_username - string - SMTP server username
    #   smtp_port - integer - SMTP server port
    #   ldap_enabled - boolean - Main LDAP setting: is LDAP enabled?
    #   ldap_type - string - LDAP type
    #   ldap_host - string - LDAP host
    #   ldap_host_2 - string - LDAP backup host
    #   ldap_host_3 - string - LDAP backup host
    #   ldap_port - integer - LDAP port
    #   ldap_secure - boolean - Use secure LDAP?
    #   ldap_username - string - Username for signing in to LDAP server.
    #   ldap_username_field - string - LDAP username field
    #   ldap_domain - string - Domain name that will be appended to usernames
    #   ldap_user_action - string - Should we sync users from LDAP server?
    #   ldap_group_action - string - Should we sync groups from LDAP server?
    #   ldap_user_include_groups - string - Comma or newline separated list of group names (with optional wildcards) - if provided, only users in these groups will be added or synced.
    #   ldap_group_exclusion - string - Comma or newline separated list of group names (with optional wildcards) to exclude when syncing.
    #   ldap_group_inclusion - string - Comma or newline separated list of group names (with optional wildcards) to include when syncing.
    #   ldap_base_dn - string - Base DN for looking up users in LDAP server
    #   days_until_2fa_required - integer - When enabling 2FA, set this to a delay period in days.
    #   disable_2fa_with_delay - boolean - If set to true, we will begin the process of disabling 2FA on this site.
    #   ldap_password_change - string - New LDAP password.
    #   ldap_password_change_confirmation - string - Confirm new LDAP password.
    #   remove_icons - boolean - If set to true, icons will be removed.
    #   smtp_password - string - Password for SMTP server.
    def self.update(params = {}, options = {})
      raise InvalidParameterError.new("Bad parameter: name must be an String") if params.dig(:name) and !params.dig(:name).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: subdomain must be an String") if params.dig(:subdomain) and !params.dig(:subdomain).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: domain must be an String") if params.dig(:domain) and !params.dig(:domain).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: email must be an String") if params.dig(:email) and !params.dig(:email).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: bundle_expiration must be an Integer") if params.dig(:bundle_expiration) and !params.dig(:bundle_expiration).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: welcome_email_cc must be an String") if params.dig(:welcome_email_cc) and !params.dig(:welcome_email_cc).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: welcome_custom_text must be an String") if params.dig(:welcome_custom_text) and !params.dig(:welcome_custom_text).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: language must be an String") if params.dig(:language) and !params.dig(:language).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: default_time_zone must be an String") if params.dig(:default_time_zone) and !params.dig(:default_time_zone).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: desktop_app_session_lifetime must be an Integer") if params.dig(:desktop_app_session_lifetime) and !params.dig(:desktop_app_session_lifetime).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: welcome_screen must be an String") if params.dig(:welcome_screen) and !params.dig(:welcome_screen).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: session_expiry must be an Integer") if params.dig(:session_expiry) and !params.dig(:session_expiry).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: user_lockout_tries must be an Integer") if params.dig(:user_lockout_tries) and !params.dig(:user_lockout_tries).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: user_lockout_within must be an Integer") if params.dig(:user_lockout_within) and !params.dig(:user_lockout_within).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: user_lockout_lock_period must be an Integer") if params.dig(:user_lockout_lock_period) and !params.dig(:user_lockout_lock_period).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: allowed_file_types must be an String") if params.dig(:allowed_file_types) and !params.dig(:allowed_file_types).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: allowed_ips must be an String") if params.dig(:allowed_ips) and !params.dig(:allowed_ips).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: days_to_retain_backups must be an Integer") if params.dig(:days_to_retain_backups) and !params.dig(:days_to_retain_backups).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: max_prior_passwords must be an Integer") if params.dig(:max_prior_passwords) and !params.dig(:max_prior_passwords).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: password_validity_days must be an Integer") if params.dig(:password_validity_days) and !params.dig(:password_validity_days).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: password_min_length must be an Integer") if params.dig(:password_min_length) and !params.dig(:password_min_length).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: disable_users_from_inactivity_period_days must be an Integer") if params.dig(:disable_users_from_inactivity_period_days) and !params.dig(:disable_users_from_inactivity_period_days).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: require_2fa_user_type must be an String") if params.dig(:require_2fa_user_type) and !params.dig(:require_2fa_user_type).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: color2_top must be an String") if params.dig(:color2_top) and !params.dig(:color2_top).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: color2_left must be an String") if params.dig(:color2_left) and !params.dig(:color2_left).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: color2_link must be an String") if params.dig(:color2_link) and !params.dig(:color2_link).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: color2_text must be an String") if params.dig(:color2_text) and !params.dig(:color2_text).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: color2_top_text must be an String") if params.dig(:color2_top_text) and !params.dig(:color2_top_text).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: site_header must be an String") if params.dig(:site_header) and !params.dig(:site_header).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: site_footer must be an String") if params.dig(:site_footer) and !params.dig(:site_footer).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: login_help_text must be an String") if params.dig(:login_help_text) and !params.dig(:login_help_text).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: smtp_address must be an String") if params.dig(:smtp_address) and !params.dig(:smtp_address).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: smtp_authentication must be an String") if params.dig(:smtp_authentication) and !params.dig(:smtp_authentication).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: smtp_from must be an String") if params.dig(:smtp_from) and !params.dig(:smtp_from).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: smtp_username must be an String") if params.dig(:smtp_username) and !params.dig(:smtp_username).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: smtp_port must be an Integer") if params.dig(:smtp_port) and !params.dig(:smtp_port).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: ldap_type must be an String") if params.dig(:ldap_type) and !params.dig(:ldap_type).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_host must be an String") if params.dig(:ldap_host) and !params.dig(:ldap_host).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_host_2 must be an String") if params.dig(:ldap_host_2) and !params.dig(:ldap_host_2).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_host_3 must be an String") if params.dig(:ldap_host_3) and !params.dig(:ldap_host_3).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_port must be an Integer") if params.dig(:ldap_port) and !params.dig(:ldap_port).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: ldap_username must be an String") if params.dig(:ldap_username) and !params.dig(:ldap_username).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_username_field must be an String") if params.dig(:ldap_username_field) and !params.dig(:ldap_username_field).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_domain must be an String") if params.dig(:ldap_domain) and !params.dig(:ldap_domain).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_user_action must be an String") if params.dig(:ldap_user_action) and !params.dig(:ldap_user_action).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_group_action must be an String") if params.dig(:ldap_group_action) and !params.dig(:ldap_group_action).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_user_include_groups must be an String") if params.dig(:ldap_user_include_groups) and !params.dig(:ldap_user_include_groups).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_group_exclusion must be an String") if params.dig(:ldap_group_exclusion) and !params.dig(:ldap_group_exclusion).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_group_inclusion must be an String") if params.dig(:ldap_group_inclusion) and !params.dig(:ldap_group_inclusion).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_base_dn must be an String") if params.dig(:ldap_base_dn) and !params.dig(:ldap_base_dn).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: days_until_2fa_required must be an Integer") if params.dig(:days_until_2fa_required) and !params.dig(:days_until_2fa_required).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: ldap_password_change must be an String") if params.dig(:ldap_password_change) and !params.dig(:ldap_password_change).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: ldap_password_change_confirmation must be an String") if params.dig(:ldap_password_change_confirmation) and !params.dig(:ldap_password_change_confirmation).is_a?(String)
      raise InvalidParameterError.new("Bad parameter: smtp_password must be an String") if params.dig(:smtp_password) and !params.dig(:smtp_password).is_a?(String)

      response, options = Api.send_request("/site", :patch, params, options)
      Site.new(response.data, options)
    end

    # Change the current billing plan for the site
    #
    # Parameters:
    #   billing_frequency - integer - The billing frequency for the site.  Must be 1(monthly) or 12(annual).
    def self.update_plan(id, params = {}, options = {})
      params ||= {}
      params[:id] = id
      raise InvalidParameterError.new("Bad parameter: id must be an Integer") if params.dig(:id) and !params.dig(:id).is_a?(Integer)
      raise InvalidParameterError.new("Bad parameter: billing_frequency must be an Integer") if params.dig(:billing_frequency) and !params.dig(:billing_frequency).is_a?(Integer)
      raise MissingParameterError.new("Parameter missing: id") unless params.dig(:id)

      response, options = Api.send_request("/site/plan", :patch, params, options)
      Plan.new(response.data, options)
    end
  end
end