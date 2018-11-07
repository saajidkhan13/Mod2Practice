class CreateWrestlers < ActiveRecord::Migration[5.2]
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.string :weight
      t.boolean :champion
      t.integer :brand_id

      t.timestamps
    end
  end
end
