class CreateIeads < ActiveRecord::Migration
  def change
    create_table :ieads do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
