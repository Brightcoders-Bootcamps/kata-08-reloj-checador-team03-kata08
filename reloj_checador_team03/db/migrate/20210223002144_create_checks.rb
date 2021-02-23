class CreateChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :checks do |t|
      t.string :employee_id
      t.boolean :direction
      t.datetime :time

      t.timestamps
    end
  end
end
