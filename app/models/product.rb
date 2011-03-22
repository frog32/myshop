class Product < ActiveRecord::Base
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01, :less_than => 10000}
  validates :image_url, :format => {
    :with => /\.(png|gif|jpeg|jpg)$/,
    :message => "Image must be jpeg, gif or png"
  }
end
