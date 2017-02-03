module Api::V1
  class CoursesController < ApplicationController
    def index
      @courses = Course.all
      render json: @courses
    end

    def show
      @course = Course.find(params[:id])
      render json: @course, serializer: CourseShowSerializer
    end

    def create
      @course = Course.create(name: params[:course][:title])
      render json: @course, status: 201
    end
  end
end
