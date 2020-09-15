class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end
  def create
    @comment = Comment.new(content: params[:comment][:content])
    @comment.save
    redirect_to comments_path, notice: "コメントを投稿しました！"
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
end
