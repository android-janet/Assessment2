class CreateIndustries < ActiveRecord::Migration
  def change
    create_table :industries do |t|
      t.index :company_id
      t.string :name
      t.text :description
      t.timestamps null:false
    end
  end
end
