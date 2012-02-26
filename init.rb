require 'redmine'

Redmine::Plugin.register :redmine_ntlm_authorize do
  name 'Redmine Ntlm Authorize plugin'
  author 'Dariusz Kowalski'
  description 'Authorize to Redmine using NTLM method'
  version '0.0.1'
  url 'http://github.com/darioo/redmine_ntlm_authorize'
end
