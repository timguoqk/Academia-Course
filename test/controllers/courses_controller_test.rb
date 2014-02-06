require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { difficulty_text: @course.difficulty_text, features_text: @course.features_text, gp_text: @course.gp_text, gpa: @course.gpa, grade: @course.grade, intro_text: @course.intro_text, photo: @course.photo, teacher: @course.teacher, title: @course.title }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { difficulty_text: @course.difficulty_text, features_text: @course.features_text, gp_text: @course.gp_text, gpa: @course.gpa, grade: @course.grade, intro_text: @course.intro_text, photo: @course.photo, teacher: @course.teacher, title: @course.title }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
