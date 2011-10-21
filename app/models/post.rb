class Post < ActiveRecord::Base
  belongs_to :topic
  has_many   :replies
  validates_presence_of :body

  has_attached_file :image, :styles => { :thumb => '60x60#', :main => '400x300>' }
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']

  # a default bit of text when there's no subject
  def display_subject
    subject || 'No subject'
  end

end
