class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :sex
      t.string :hobby

      t.timestamps
    end
  end
end
