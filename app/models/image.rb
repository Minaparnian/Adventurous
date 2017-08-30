# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  name       :text
#  history    :text
#  location   :text
#  image      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :user, :optional => true
  validates :image, :presence => true
  has_many :comments
  geocoded_by :location
  after_validation :geocode

end
