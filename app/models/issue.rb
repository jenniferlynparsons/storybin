# == Schema Information
#
# Table name: issues
#
#  id         :bigint(8)        not null, primary key
#  pub_date   :date
#  start_date :date
#  end_date   :date
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  number     :integer
#

class Issue < ApplicationRecord
  validates_presence_of :pub_date
  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_presence_of :number
  has_many :submissions
  has_many :works, through: :submissions
end
