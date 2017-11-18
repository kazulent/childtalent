class IrosController < ApplicationController
  def create
    @iro = Iro.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    @iros = Iro.where(tweet_id: params[:tweet_id])
    @tweet = Tweet.find(params[:tweet_id])
    @tweets = Tweet.all
  end

  def destroy
    iro = Iro.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    iro.destroy
    @iros = Iro.where(tweet_id: params[:tweet_id])
    @tweet = Tweet.find(params[:tweet_id])
    @tweets = Tweet.all
  end
end
