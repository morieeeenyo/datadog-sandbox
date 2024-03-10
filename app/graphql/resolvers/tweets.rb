module Resolvers
  class Tweets < BaseResolver
    type [Types::TweetType], null: false

    def resolve
      Tweet.all
    end
  end
end