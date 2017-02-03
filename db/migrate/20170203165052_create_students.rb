class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :github_username
      t.string :email
      t.string :fun_fact, default: ''
      t.string :blog_url
      t.timestamps
    end
  end
end
