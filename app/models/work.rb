# == Schema Information
#
# Table name: works
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  author     :string
#  workfile   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Work < ApplicationRecord
end
