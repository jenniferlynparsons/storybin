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

require 'rails_helper'

RSpec.describe Issue, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
