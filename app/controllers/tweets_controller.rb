class TweetsController < ApplicationController
  # 作品の表示画面
  def index
    # @tweets = Tweet.all.order("created_at DESC")
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  # 作品の投稿画面
  def new
    @tweet = Tweet.new
  end

  # 作品の保存画面
  def create
    @tweet = Tweet.create(text: create_params[:text], image: create_params[:image], user_id: current_user.id)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.destroy
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(create_params)
    end
  end

  # ストロングパラメーター
  private
  def create_params
    params.require(:tweet).permit(:text, :image)
  end
end
