# == Schema Information
#
# Table name: submissions
#
#  id           :bigint(8)        not null, primary key
#  cover_letter :text
#  active       :boolean
#  simultaneous :boolean
#  reprint      :boolean
#  reprint_date :date
#  status       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Submission < ApplicationRecord
end
