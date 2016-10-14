class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :environment
      t.string :location
      t.string :purpose
      t.string :name
      t.string :accessibility
      t.text :description

      t.timestamps
    end
  end
end
