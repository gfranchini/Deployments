class CreateLoadBalancers < ActiveRecord::Migration[5.0]
  def change
    create_table :load_balancers do |t|
      t.string :type
      t.string :ip_addres
      t.string :server_type
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
