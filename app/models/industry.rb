# == Schema Information
#
# Table name: industries
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  skills_id  :integer
#
class Industry < ApplicationRecord
end
