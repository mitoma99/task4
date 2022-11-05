class RelationshipsController < ApplicationController
  
# フォローするとき
  def create
    current_user.follow(params[:user_id])
    redirect_to request.referer
  end
  # フォロー外すとき
  def destroy
    current_user.unfollow(params[:user_id])
    redirect_to request.referer  
  end
  # フォロー一覧
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end
  # フォロワー一覧
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
end


# def create
#   following = current_user.follow(@user)
#   if following.save
#     flash[:success] = 'ユーザーをフォローしました'
#     redirect_to @user
#   else
#     flash.now[:alert] = 'ユーザーのフォローに失敗しました'
#     redirect_to @user
#   end 
# end 

# def destroy
#   following = current_user.unfollow(@user)
#   if following.destroy
#     flash[:success] = 'ユーザーのフォローを解除しました'
#     redirect_to @user
#   else 
#     flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
#     redirect_to @user
#   end 
# end 

# private

# def 
#   @user = User.find(params[:relationship][:follower_id][:followed_id])
# end 

# end
