# == Schema Information
#
# Table name: submissions
#
#  id                  :bigint(8)        not null, primary key
#  cover_letter        :text
#  active              :boolean
#  reprint             :boolean
#  reprint_date        :date
#  status              :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :integer
#  work_id             :integer
#  issue_id            :integer
#  reprint_publication :text
#

class Submission < ApplicationRecord
  belongs_to :works, optional: true
  # belongs_to :issues, condition: { where(active: true) } 
  belongs_to :issues, optional: true
  belongs_to :users, optional: true
end
