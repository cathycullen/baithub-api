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

require 'rails_helper'

RSpec.describe Bait, type: :model do
  subject { @bait = build(:bait) }

  it { should be_valid }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:image) }
end
