class CreateArchitectures < ActiveRecord::Migration[5.0]
  def change
    create_table :architectures do |t|
      t.text :description
      t.attachment :diagram
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
