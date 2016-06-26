class Artistupload < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#", :large => "800x800>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :title, :presence => :true
	validates :inspiration, :presence => { :message => "Sorry, But we'd like to know what inspired you."}
	validates :description, :presence => { :message => "You Must Add a Description!" }

	belongs_to :user
	
end
