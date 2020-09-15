class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  def create
    @comment = Comment.new(comment_params)
    if params[:back]
      render :new
    else
      if @comment.save
        redirect_to comments_path, notice: "コメントを投稿しました！"
      else
        render :new
      end
    end
  end
  def new
    @comment = Comment.new
  end
  def edit
    @comment = Comment.find(params[:id])
  end
  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to comments_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  def destroy
  end
  def confirm
    @comment = Comment.new(comment_params)
    render :new if @comment.invalid?
  end
  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
