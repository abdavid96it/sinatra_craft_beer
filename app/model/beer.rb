class Beer < ActiveRecord::Base
  has_many :customers
  belongs_to :category

end
