# == Schema Information
#
# Table name: tackle_box_items
#
#  id         :integer          not null, primary key
#  bait_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TackleBoxItem < ApplicationRecord
  belongs_to :bait
  belongs_to :user
  validates :bait, presence: true
  validates :user, presence: true

  default_scope { order(created_at: :desc) }
end
