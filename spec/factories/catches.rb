# == Schema Information
#
# Table name: catches
#
#  id         :integer          not null, primary key
#  species    :string
#  weight     :decimal(, )
#  length     :decimal(, )
#  bait_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :catch do
    species { 'Rainbow Trout' }
    weight { 4.0 }
    length { 21 }
    bait
    user
  end
end
