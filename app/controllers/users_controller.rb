class UsersController < ApplicationController

  
def show
	@user = User.find(params[:id])
	@user_posts = @user.posts.where(:glowna => true)
	@user_post_poczekalnia = @user.posts.where(:glowna => false)
end

def edit

end

def update

end

 def user_params
      params.require(:user).permit(:name, :avatar)
 end

end