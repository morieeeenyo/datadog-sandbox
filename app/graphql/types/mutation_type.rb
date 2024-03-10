# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :post_tweet, mutation: Mutations::PostTweet
  end
end
