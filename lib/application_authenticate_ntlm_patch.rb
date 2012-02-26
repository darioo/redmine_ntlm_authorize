require_dependency 'user'
require_dependency 'application_controller'

module ApplicationAuthenticateNtlmPatch
  def self.included(base) # :nodoc:
    base.send(:include, InstanceMethods)

    base.class_eval do
      alias_method_chain :find_current_user, :ntlm_authentication
    end
  end

  module InstanceMethods
    # Adds ntlm authentication
    def find_current_user_with_ntlm_authentication
	if (forwarded_user = request.env[Setting.plugin_redmine_ntlm_authorize['ntlm_auth_key']])
     		# web server authentication
	     	(User.find_by_login(forwarded_user) rescue nil)
	else
		find_current_user_without_ntlm_authentication
	end
    end
  end
end

ApplicationController.send(:include, ApplicationAuthenticateNtlmPatch)
