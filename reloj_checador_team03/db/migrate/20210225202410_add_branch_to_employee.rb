class AddBranchToEmployee < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :branch, index: true
  end
end
