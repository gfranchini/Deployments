class CreateDeployments < ActiveRecord::Migration[5.0]
  def change
    create_table :deployments do |t|
      t.string :repo
      t.string :stack
      t.text :software
      t.text :installation
      t.references :form, foreign_key: true

      t.timestamps
    end
  end
end
