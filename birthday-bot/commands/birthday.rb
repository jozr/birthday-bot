module SlackMathbot
  module Commands
    class BirthdayBot < SlackRubyBot::Bot
      command 'birthday' do |client, data, match|
        client.say(text: "When is your birthday?", channel: data.channel)
	  end
    end
  end
end