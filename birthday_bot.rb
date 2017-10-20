require 'slack-ruby-bot'

class BirthdayBot < SlackRubyBot::Bot
  command /^birthday$/ do |client, data, match|
    client.say(channel: data.channel, text: "When is your birhday?")
  end
end

BirthdayBot.run
