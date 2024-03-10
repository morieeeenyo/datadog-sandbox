# frozen_string_literal: true

module Mutations
  class PostTweet < BaseMutation
    # TODO: define return fields
    field :tweet, Types::TweetType, null: false

    # TODO: define arguments
    argument :content, String, required: true

    # TODO: define resolve method
    def resolve(name:)
      tweet = Tweet.new.(content: content).save!
      { tweet: }
    end
  end
end
