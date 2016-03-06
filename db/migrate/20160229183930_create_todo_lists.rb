class CreateTodoLists < ActiveRecord::Migration
  def change
    create_table :todo_lists do |t|
      t.string :title, null: false, :limit=> 20     
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
