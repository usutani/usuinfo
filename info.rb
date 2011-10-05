# vmc push APPNAME --runtime ruby19 --m 64M --no-start -n
# vmc bind-service SERVICE_NAME APPNAME
# vmc apps
# vmc start APPNAME

require 'sinatra'
require 'json'

get '/' do
  s = JSON.dump(JSON.parse(ENV['VCAP_SERVICES']))
  s.gsub!(/\{/, '{<br>')
  s.gsub!(/,/, ',<br>')
end
