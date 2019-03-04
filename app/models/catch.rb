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

class Catch < ApplicationRecord
  belongs_to :bait
  belongs_to :user

  validates :species, presence: true

  validates :weight, :length,
            numericality: { greater_than: 0 },
            presence: true

  default_scope { order(created_at: :desc) }
end
