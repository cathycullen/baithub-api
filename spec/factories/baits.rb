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

FactoryBot.define do
  factory :bait do
    name { 'name' }
    category { 'category' }
    image { 'image' }

    # factory :fat_rap_bait do
    #   name { 'Fat Rap' }
    #   category { 'Crankbait' }
    #   image { 'fat-rap.png' }
    # end
    # factory :yummy_gummy_bait do
    #   name { 'Yummy Gummy' }
    #   category { 'Softbait' }
    #   image { 'yummy-gummy.png' }
    # end
  end
end
