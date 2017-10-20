require 'slack-ruby-bot'

class BirthdayBot < SlackRubyBot::Bot
  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end
end

BirthdayBot.run
