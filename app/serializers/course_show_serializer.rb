class CourseShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :students, through: :course_students
end
