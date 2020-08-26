Telerobot::Config.set({
  bot_token: Rails.application.credentials[:bot_token]
})

require "net/http"
require "json"

module Telerobot
  class Chat
    def request!(query)
      Net::HTTP.start(@uri.host, @uri.port, use_ssl: true) do |http|
        req = Net::HTTP::Post.new(@uri)
        req['Content-Type'] = "application/json"
        req.body = query.to_json
        res = http.request(req)
        puts res.body
      end
    end
  end
end