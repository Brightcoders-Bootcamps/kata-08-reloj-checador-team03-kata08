class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :last_name
      t.string :position
      t.string :email
      t.integer :private_number

      t.timestamps
    end
  end
end
