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

FactoryBot.define do
  factory :tackle_box_item do
    bait
    user
  end
end
