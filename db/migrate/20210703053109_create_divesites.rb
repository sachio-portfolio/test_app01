class CreateDivesites < ActiveRecord::Migration[5.2]
  def change
    create_table :divesites do |t|
      t.string :name, null: false
      t.string :region, null: false
      t.string :area, null: false
      t.string :zone, null: false
      t.string :adress, null: false
      t.string :phone, null: false
      t.string :service, null: false
      t.text :discription

      t.timestamps
    end
  end
end
