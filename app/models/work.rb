# == Schema Information
#
# Table name: works
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  author     :string
#  file       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  file_data  :text
#

class Work < ApplicationRecord
  include WorkUploader[:file]
    validates :title, presence: true
end
