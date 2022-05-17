class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :student_name
      t.integer :student_RNO
      t.integer :college_id

      t.timestamps
    end
  end
end
