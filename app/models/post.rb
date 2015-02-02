class Post < ActiveRecord::Base

has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" } #:default_url => "/images/:style/missing.png"
validates_attachment :picture,  
	:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

  belongs_to :user
  has_many :reviews
end
