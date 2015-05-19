class Industry < ActiveRecord::Base

has_and_belongs_to_many :companies

validates :name, :description, presence: true
validates :company_id, uniqueness: true

end
