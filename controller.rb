require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'
require_relative './models/word_formatter'

get '/' do
  erb(:home)
end

get '/address' do
content_type(:json)
postcode = WordFormatter.new("e13 zpf")
results = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: postcode.text_upcase,
    phone: '0131558030'
}
results.to_json
  
end

get '/camelcase/:text' do
  content_type(:json)
  text = WordFormatter.new(params[:text])
  return text.camel_case.to_json
end