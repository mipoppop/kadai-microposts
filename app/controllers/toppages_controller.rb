class ToppagesController < ApplicationController
  def index
      @user = current_user
      @micropost = current_user.microposts.build  # form_for 用
      @microposts = current_user.microposts.order('created_at DESC').page(params[:page])
  end
end
