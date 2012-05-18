class Category < ActiveRecord::Base
	has_many :products, :dependent=>:destroy
	validates_presence_of :name, :message=>"^Enter Category name"
	validates_presence_of :sl_no,:message=>"^Enter serial no."
	validates_uniqueness_of :name,:message=>"^%{value} already taken, enter another name"
	validates_numericality_of :sl_no, :only_integer=>true,:allow_blank => true
end
