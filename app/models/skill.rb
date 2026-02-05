# == Schema Information
#
# Table name: skills
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  industries_id :integer
#  industry_id   :integer
#  users_id      :integer
#
class Skill < ApplicationRecord
end
