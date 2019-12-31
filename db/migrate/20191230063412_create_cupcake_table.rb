class CreateCupcakeTable < ActiveRecord::Migration
  def change
    create_table :cupcakes do |t|
      t.string :name
      t.integer :price
    end
  end
end
