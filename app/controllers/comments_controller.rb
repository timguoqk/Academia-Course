class CommentsController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter, :login_with_cas

  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.create(params[:comment].permit(:content))
    @comment.author_id = @current_user
    redirect_to course_path(@course)
  end
end
