class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :address
      t.string :name
      t.datetime :last_login
      t.integer :login_count
      t.integer :status

      t.timestamps
    end
  end
end
