# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Conversations
          #
          # Archives a conversation.
          #
          # @option options [channel] :channel
          #   ID of conversation to archive.
          # @see https://api.slack.com/methods/conversations.archive
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.archive.json
          def conversations_archive(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.archive', options)
          end

          #
          # Closes a direct message or multi-person direct message.
          #
          # @option options [channel] :channel
          #   Conversation to close.
          # @see https://api.slack.com/methods/conversations.close
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.close.json
          def conversations_close(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.close', options)
          end

          #
          # Initiates a public or private channel-based conversation
          #
          # @option options [Object] :name
          #   Name of the public or private channel to create.
          # @option options [Object] :is_private
          #   Create a private channel instead of a public one.
          # @see https://api.slack.com/methods/conversations.create
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.create.json
          def conversations_create(options = {})
            throw ArgumentError.new('Required arguments :name missing') if options[:name].nil?
            post('conversations.create', options)
          end

          #
          # Fetches a conversation's history of messages and events.
          #
          # @option options [channel] :channel
          #   Conversation ID to fetch history for.
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [timestamp] :latest
          #   End of time range of messages to include in results.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.
          # @option options [timestamp] :oldest
          #   Start of time range of messages to include in results.
          # @see https://api.slack.com/methods/conversations.history
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.history.json
          def conversations_history(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            if block_given?
              Pagination::Cursor.new(self, :conversations_history, options).each do |page|
                yield page
              end
            else
              post('conversations.history', options)
            end
          end

          #
          # Retrieve information about a conversation.
          #
          # @option options [channel] :channel
          #   Conversation ID to learn more about.
          # @option options [Object] :include_locale
          #   Set this to true to receive the locale for this conversation. Defaults to false.
          # @see https://api.slack.com/methods/conversations.info
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.info.json
          def conversations_info(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.info', options)
          end

          #
          # Invites users to a channel.
          #
          # @option options [channel] :channel
          #   The ID of the public or private channel to invite user(s) to.
          # @option options [Object] :users
          #   A comma separated list of user IDs. Up to 30 users may be listed.
          # @see https://api.slack.com/methods/conversations.invite
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.invite.json
          def conversations_invite(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :users missing') if options[:users].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.invite', options)
          end

          #
          # Joins an existing conversation.
          #
          # @option options [channel] :channel
          #   ID of conversation to join.
          # @see https://api.slack.com/methods/conversations.join
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.join.json
          def conversations_join(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.join', options)
          end

          #
          # Removes a user from a conversation.
          #
          # @option options [channel] :channel
          #   ID of conversation to remove user from.
          # @option options [user] :user
          #   User ID to be removed.
          # @see https://api.slack.com/methods/conversations.kick
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.kick.json
          def conversations_kick(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :user missing') if options[:user].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('conversations.kick', options)
          end

          #
          # Leaves a conversation.
          #
          # @option options [channel] :channel
          #   Conversation to leave.
          # @see https://api.slack.com/methods/conversations.leave
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.leave.json
          def conversations_leave(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.leave', options)
          end

          #
          # Lists all channels in a Slack team.
          #
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :exclude_archived
          #   Set to true to exclude archived channels from the list.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached. Must be an integer no larger than 1000.
          # @option options [Object] :types
          #   Mix and match channel types by providing a comma-separated list of any combination of public_channel, private_channel, mpim, im.
          # @see https://api.slack.com/methods/conversations.list
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.list.json
          def conversations_list(options = {})
            if block_given?
              Pagination::Cursor.new(self, :conversations_list, options).each do |page|
                yield page
              end
            else
              post('conversations.list', options)
            end
          end

          #
          # Retrieve members of a conversation.
          #
          # @option options [channel] :channel
          #   ID of the conversation to retrieve members for.
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.
          # @see https://api.slack.com/methods/conversations.members
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.members.json
          def conversations_members(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            if block_given?
              Pagination::Cursor.new(self, :conversations_members, options).each do |page|
                yield page
              end
            else
              post('conversations.members', options)
            end
          end

          #
          # Opens or resumes a direct message or multi-person direct message.
          #
          # @option options [channel] :channel
          #   Resume a conversation by supplying an im or mpim's ID. Or provide the users field instead.
          # @option options [Object] :return_im
          #   Boolean, indicates you want the full IM channel definition in the response.
          # @option options [Object] :users
          #   Comma separated lists of users. If only one user is included, this creates a 1:1 DM.  The ordering of the users is preserved whenever a multi-person direct message is returned. Supply a channel when not supplying users.
          # @see https://api.slack.com/methods/conversations.open
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.open.json
          def conversations_open(options = {})
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.open', options)
          end

          #
          # Renames a conversation.
          #
          # @option options [channel] :channel
          #   ID of conversation to rename.
          # @option options [Object] :name
          #   New name for conversation.
          # @see https://api.slack.com/methods/conversations.rename
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.rename.json
          def conversations_rename(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :name missing') if options[:name].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.rename', options)
          end

          #
          # Retrieve a thread of messages posted to a conversation
          #
          # @option options [channel] :channel
          #   Conversation ID to fetch thread from.
          # @option options [timestamp] :ts
          #   Unique identifier of a thread's parent message.
          # @option options [Object] :cursor
          #   Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first "page" of the collection. See pagination for more detail.
          # @option options [Object] :limit
          #   The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached.
          # @see https://api.slack.com/methods/conversations.replies
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.replies.json
          def conversations_replies(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :ts missing') if options[:ts].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            if block_given?
              Pagination::Cursor.new(self, :conversations_replies, options).each do |page|
                yield page
              end
            else
              post('conversations.replies', options)
            end
          end

          #
          # Sets the purpose for a conversation.
          #
          # @option options [channel] :channel
          #   Conversation to set the purpose of.
          # @option options [Object] :purpose
          #   A new, specialer purpose.
          # @see https://api.slack.com/methods/conversations.setPurpose
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.setPurpose.json
          def conversations_setPurpose(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :purpose missing') if options[:purpose].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.setPurpose', options)
          end

          #
          # Sets the topic for a conversation.
          #
          # @option options [channel] :channel
          #   Conversation to set the topic of.
          # @option options [Object] :topic
          #   The new topic string. Does not support formatting or linkification.
          # @see https://api.slack.com/methods/conversations.setTopic
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.setTopic.json
          def conversations_setTopic(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            throw ArgumentError.new('Required arguments :topic missing') if options[:topic].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.setTopic', options)
          end

          #
          # Reverses conversation archival.
          #
          # @option options [channel] :channel
          #   ID of conversation to unarchive.
          # @see https://api.slack.com/methods/conversations.unarchive
          # @see https://github.com/dblock/slack-api-ref/blob/master/methods/conversations/conversations.unarchive.json
          def conversations_unarchive(options = {})
            throw ArgumentError.new('Required arguments :channel missing') if options[:channel].nil?
            options = options.merge(channel: channels_id(options)['channel']['id']) if options[:channel]
            post('conversations.unarchive', options)
          end
        end
      end
    end
  end
end
