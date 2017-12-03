class UsersController < ApplicationController
  def show
    # ユーザープロフィールの表示
    @user = User.find(params[:id])
    # ユーザーの投稿作品を表示
    @tweets = current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:family_name, :first_name, :family_name_kana, :first_name_kana)
  end
end
