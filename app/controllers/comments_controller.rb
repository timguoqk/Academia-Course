class CommentsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.create(params[:comment].permit(:content))
    @comment.author_id = "TestUser"
    redirect_to course_path(@course)
  end
end
