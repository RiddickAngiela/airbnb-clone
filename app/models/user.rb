class User < ApplicationRecord
 def gravatar_url(size = 200)
    gravatar_id = Digest::MD5.hexdigest(email.downcase)
    "https://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end

   has_many :galleries
  has_one_attached :profile_image
   has_many :likes, dependent: :destroy

  def likes?(picture)
  likes.exists?(picture_id: picture.id)
end

  # Method to get the user's profile image
  def display_profile_image
    if profile_image.attached?
      profile_image
    else
      # Return a default image or placeholder if no image is attached
      'default_profile_image.jpg'
    end
  end
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
