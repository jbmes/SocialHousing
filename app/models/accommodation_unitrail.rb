class AccommodationUnitrail < ActiveRecord::Base
  
  has_many :links , :dependent => :destroy 
  accepts_nested_attributes_for :links, :allow_destroy => true 
end
