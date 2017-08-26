# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  name       :text
#  history    :text
#  location   :text
#  photo      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :user, :optional => true
end
