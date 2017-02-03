class StudentSerializer < ActiveModel::Serializer
  attributes :name, :id, :email
  has_many :courses, through: :course_students
end
