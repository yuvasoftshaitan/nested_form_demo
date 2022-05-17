class CreateColleges < ActiveRecord::Migration[6.1]
  def change
    create_table :colleges do |t|
      t.string :college_name
      t.integer :college_RNO

      t.timestamps
    end
  end
end
