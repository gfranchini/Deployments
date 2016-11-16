class FixLbColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :load_balancers, :type, :lb_type
    rename_column :load_balancers, :ip_addres, :ip_address 
  end
end
