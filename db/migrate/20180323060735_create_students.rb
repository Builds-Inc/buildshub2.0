class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :username
      t.date :birth
      t.integer :graduate
      t.text :experience

      t.timestamps
    end
  end
end
