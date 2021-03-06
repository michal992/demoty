class Notification < ApplicationRecord
  # belongs_to :user
  # belongs_to :subscribed_user
  # belongs_to :post

 belongs_to :user
  belongs_to :notified_by, class_name: 'User'
  belongs_to :post

  validates :user_id, :notified_by_id, :post_id, :notice_type, presence: true
end

