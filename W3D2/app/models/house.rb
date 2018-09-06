# == Schema Information
#
# Table name: houses
#
#  id         :bigint(8)        not null, primary key
#  house      :string           not null
#  address    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ApplicationRecord
  validates :address, presence: true
  validates :address, uniqueness: true 

  has_many :residents,
  primary_key: :id,
  foreign_key: :house_id,
  class_name: :Person
end
