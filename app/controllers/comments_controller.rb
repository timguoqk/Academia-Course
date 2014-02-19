class CommentsController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter, :login_with_cas

  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.create(params[:comment].permit(:content))
    @comment.author_id = session[:cas_user]
    @comment.save
    redirect_to course_path(@course)
  end

  def index
  	redirect_to course_path(@course)
  end
end
