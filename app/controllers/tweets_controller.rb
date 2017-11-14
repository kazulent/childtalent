class TweetsController < ApplicationController
  # 作品の表示画面
  def index
    @tweets = Tweet.all
  end

  # 作品の投稿画面
  def new
    @tweet = Tweet.new
  end

  # 作品の保存画面
  def create
    @tweet = Tweet.create(text: create_params[:text], image: create_params[:image], user_id: current_user.id)
  end

  # ストロングパラメーター
  private
  def create_params
    params.require(:tweet).permit(:text, :image)
  end
end
