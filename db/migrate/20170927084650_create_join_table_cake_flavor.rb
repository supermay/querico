class CreateJoinTableCakeFlavor < ActiveRecord::Migration[5.1]
  def change
    create_join_table :cakes, :flavors do |t|
      t.index [:cake_id, :flavor_id]
      t.index [:flavor_id, :cake_id]
    end
  end
end
