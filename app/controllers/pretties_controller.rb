class PrettiesController < ApplicationController
  def create
    @pretty = Pretty.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    @pretties = Pretty.where(tweet_id: params[:tweet_id])
    @tweet = Tweet.find(params[:tweet_id])
    @tweets = Tweet.all
  end

  def destroy
    pretty = Pretty.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    pretty.destroy
    @pretties = Pretty.where(tweet_id: params[:tweet_id])
    @tweet = Tweet.find(params[:tweet_id])
    @tweets = Tweet.all
  end
end
