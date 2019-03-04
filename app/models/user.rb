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

class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true,
                       uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true
  has_many :tackle_box_items, dependent: :destroy
  has_many :catches, dependent: :destroy

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    user && user.authenticate(password)
  end
end
