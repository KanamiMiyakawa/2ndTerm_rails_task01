class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path, notice: "コメントを投稿しました！"
    else
      render :new
    end
  end
  def new
    @comment = Comment.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
