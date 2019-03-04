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

require 'rails_helper'

RSpec.describe Catch, type: :model do
  subject { @catch = build(:catch) }
  it { should be_valid }

  it { should validate_presence_of(:species) }
  it { should validate_presence_of(:weight) }
  it { should validate_presence_of(:length) }

end
