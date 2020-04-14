class CommentsController < ApplicationController
  

  
  def new
    @comment=Comment.new
  end

  def create
    @comment = Comment.new

    if @comment.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  




end
