class AddCompanyIdToIndustry < ActiveRecord::Migration
  def change
    add_column :industries, :company_id, :integer
  end
end
