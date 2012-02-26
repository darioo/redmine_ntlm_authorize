require 'redmine'

require 'application_authenticate_ntlm_patch'

Redmine::Plugin.register :redmine_ntlm_authorize do
  name 'Redmine NTML Authenticate plugin'
  author 'Dariusz Kowalski'
  description 'Authorize to Redmine using NTLM method'
  version '0.0.1'
  url 'http://github.com/darioo/redmine_ntlm_authorize'

  settings :default => {
	'ntlm_auth_key'  => 'HTTP_X_REMOTE_USER' 
  }
end
