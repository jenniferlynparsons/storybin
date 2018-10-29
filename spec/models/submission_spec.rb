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

# require 'rails_helper'

# RSpec.describe Submission, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
