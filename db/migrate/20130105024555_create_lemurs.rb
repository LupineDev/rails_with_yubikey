class CreateLemurs < ActiveRecord::Migration
  def change
    create_table :lemurs do |t|
      t.string :species
      t.text :description

      t.timestamps
    end
  end
end
