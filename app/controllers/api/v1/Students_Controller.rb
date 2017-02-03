module Api::V1
  class StudentsController < ApplicationController
    def index
      @students = Student.all
      render json: @students
    end

    def show
      @student = Student.find(params[:id])
      render json: @student, serializer: StudentShowSerializer
    end

    def create
      @student = Student.create(name: params[:student][:name])
      render json: @student, status: 201
    end
  end
end
