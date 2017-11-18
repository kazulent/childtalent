class KatachisController < ApplicationController
  def create
    @katachi = Katachi.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    @katachis = Katachi.where(tweet_id: params[:tweet_id])
    @tweet = Tweet.find(params[:tweet_id])
    @tweets = Tweet.all
  end

  def destroy
    katachi = Katachi.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    katachi.destroy
    @katachis = Katachi.where(tweet_id: params[:tweet_id])
    @tweet = Tweet.find(params[:tweet_id])
    @tweets = Tweet.all
  end
end
