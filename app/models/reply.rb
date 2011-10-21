class Reply < ActiveRecord::Base
  belongs_to :post
  has_attached_file :image, :styles => { :thumb => '60x60#', :main => '400x300>' }
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
