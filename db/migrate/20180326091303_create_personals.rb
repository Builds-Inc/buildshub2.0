class CreatePersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :personals do |t|
      t.integer :user_id
      t.string :name
      t.string :kana
      t.integer :sex
      t.date :birth

      t.timestamps
    end
  end
end
