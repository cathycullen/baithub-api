# == Schema Information
#
# Table name: baits
#
#  id         :integer          not null, primary key
#  name       :string
#  category   :string
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bait < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category, :image, presence: true
end
