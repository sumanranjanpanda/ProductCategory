class Product < ActiveRecord::Base
	belongs_to :category
	validates_presence_of :name, :message=>"^ Name cant be blank", :reduce => true
	validates_presence_of :category_id, :message=>"^ Please select Category", :reduce => true
	validates_presence_of :price, :message=>"^ Price cant be blank", :reduce => true
	validates_numericality_of :price, :include_blank =>true, :reduce => true
end
