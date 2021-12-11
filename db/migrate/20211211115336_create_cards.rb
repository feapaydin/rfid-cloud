class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :address
      t.string :name
      t.datetime :last_login
      t.integer :login_count, default: 0
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
