# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { @user = build(:user) }

  it { should be_valid }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
end
