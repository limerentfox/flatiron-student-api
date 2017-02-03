class StudentShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :github_username, :email, :blog_url, :fun_fact
  has_many :courses, through: :course_students
end
