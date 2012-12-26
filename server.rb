require 'sinatra'
gem 'bcrypt-ruby', '~> 3.0.0'
require 'bcrypt'
require 'json'

get '/check_password' do
  if BCrypt::Password.new(params[:digest]) == params[:password]
    {:status => "success"}.to_json
  else
    {:status => "fail"}.to_json
  end
end
