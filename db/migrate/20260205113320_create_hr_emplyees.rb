class CreateHrEmplyees < ActiveRecord::Migration[8.0]
  def change
    create_table :hr_emplyees do |t|
      t.string :f_name
      t.string :l_name
      t.string :job_title
      t.string :department
      t.string :location
      t.string :email
      t.string :phone
      t.integer :manager_id
      t.string :team
      t.string :im_handle
      t.integer :users_id
      t.integer :users_count

      t.timestamps
    end
  end
end
