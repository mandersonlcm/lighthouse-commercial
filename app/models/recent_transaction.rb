class RecentTransaction < ActiveRecord::Base
  attr_accessible :amount, :image, :location, :name, :property_type
  
  mount_uploader :image, ImageUploader
end
