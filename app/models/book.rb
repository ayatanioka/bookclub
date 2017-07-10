class Book < ActiveRecord::Base
  has_many :reviews

  def review(user_id)
    self.reviews.find_by(user_id: user_id)
  end
  # has_attached_file :image,
  #                     styles: { medium: "300x300#", thumb: "50x50#" }
  # validates_attachment_content_type :image,
  #                                     content_type: ["image/jpg", "image/jpeg", "image/png"]
end
