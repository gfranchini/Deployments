class CreateServers < ActiveRecord::Migration[5.0]
  def change
    create_table :servers do |t|
      t.string :hostname
      t.string :ip
      t.string :os
      t.integer :cpucores
      t.integer :memory
      t.integer :disk
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
