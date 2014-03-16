desc 'Pings site url to keep dyno alive'

task :ping do
  require 'net/http'

  uri = URI("http://#{ENV['USERNAME']}:#{ENV['PASSWORD']}@cecil-staging.herokuapp.com")
  Net::HTTP.get_response(uri)
end
