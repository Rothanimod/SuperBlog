# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :body, length: { minimum: 250 }
  belongs_to :user
  has_many :comments, dependent: :destroy
end
