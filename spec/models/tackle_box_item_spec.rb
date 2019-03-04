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

require 'rails_helper'

RSpec.describe TackleBoxItem, type: :model do

  subject { @tackle_box_item = build(:tackle_box_item) }

  it { should be_valid }
  it { is_expected.to validate_presence_of :bait }
  it { is_expected.to belong_to :bait }
  it { should belong_to(:bait) }
  it { should belong_to(:user) }
end
