class Micropost < ApplicationRecord
  belongs_to :user
  scope :newest, ->{order created_at: :desc}
  mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :content, presence: true,
    length: {maximum: Settings.user.maximum}
  validate  :picture_size

  private

  def picture_size
    return unless picture.size > Settings.user.size_picture.megabytes
    errors.add(:picture, I18n.t("models.micropost.picture_info"))
  end
end
