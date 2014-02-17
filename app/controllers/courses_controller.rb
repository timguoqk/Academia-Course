class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_courses, only: [:welcome, :list_rank_humanity, :list_rank_nature, :list_all, :index]
  before_action :check_dev, only: [:edit, :update, :new, :destroy]

  def about
    
  end
  
  def welcome

  end

  def list_rank_humanity
    @courses = @courses.select { |e| e.ranking !=0 && e.subject == '人文' }
    @courses = @courses.sort_by { |e| e.ranking }
  end

  def list_rank_nature
    @courses = @courses.select { |e| e.ranking !=0 && e.subject == '自然' }
    @courses = @courses.sort_by { |e| e.ranking }
  end

  def list_all

  end

  def like
    
  end

  # GET /courses
  # GET /courses.json
  def index
    
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @comments = @course.comments
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    #if params[:course][:photo] and @course.photo
    #  old_photo = Course.find(params[:id]).photo
    #end
    #if @course.update_attributes(params[:course])
    #  old_photo.remove! if old_photo
    #end

    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    def set_courses
      @courses = Course.all
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:teacher, :photo, :title, :gpa, :grade, :intro_text, :gp_text, :difficulty_text, :features_text, :likes, :ranking, :subject, :room, :position, :stu_quantity)
    end

    def check_dev
      if Rails.env != "development"
        redirect_to root_url
      end
    end
end
