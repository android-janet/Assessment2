class Company < ActiveRecord::Base

has_many :industries
belongs_to :industry

end
