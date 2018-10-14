require 'dotenv'
require 'base64'
require 'httparty'

Dotenv.load

@client_id = ENV['CLIENT_ID']
@secret_id = ENV['CLIENT_SECRET']

def encode(client_id, secret_id)
  keys = "#{client_id}:#{secret_id}"
  enc = 'Basic ' + Base64.strict_encode64(keys)
  return enc
end

def post_request
  my_post_request = HTTParty.post(
    'https://accounts.spotify.com/api/token', 
    headers: {'Authorization': encode(@client_id, @secret_id)}, 
    body: {'grant_type': 'client_credentials'}
  )
  return my_post_request['access_token']
end

def get_latest_release
  result = HTTParty.get(
    'https://api.spotify.com/v1/browse/new-releases?limit=2', headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': "Bearer #{post_request}"
  })
  return result
end

puts get_latest_release