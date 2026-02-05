class CreateSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :skills do |t|
      t.integer :industry_id
      t.integer :industries_id
      t.integer :users_id

      t.timestamps
    end
  end
end
