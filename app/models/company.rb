class Company < ActiveRecord::Base

has_and_belongs_to_many :industries

validates :name, :description, :price, presence: true

end
