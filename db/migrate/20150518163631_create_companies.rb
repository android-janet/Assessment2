class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.index :industry_id
      t.string :name
      t.text :description
      t.integer :price
      t.timestamps null: false
    end
  end
end
