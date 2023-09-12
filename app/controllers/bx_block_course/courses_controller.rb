module BxBlockCourse
  class CoursesController < ApplicationController
    def index
      @courses = Course.all.includes(:sub_courses => :sub_sub_courses)
      render json: @courses.as_json(include: { sub_courses: { include: {sub_sub_courses: {include: :sub_sub_sub_courses}} } })
    end

    def show
      @course = Course.find(params[:id])
      render json: @course.as_json(include: { sub_courses: { include: {sub_sub_courses: {include: :sub_sub_sub_courses}} } })
    end
  end
end
