# == Schema Information
#
# Table name: hr_emplyees
#
#  id          :bigint           not null, primary key
#  department  :string
#  email       :string
#  f_name      :string
#  im_handle   :string
#  job_title   :string
#  l_name      :string
#  location    :string
#  phone       :string
#  team        :string
#  users_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  manager_id  :integer
#  users_id    :integer
#
class HrEmplyee < ApplicationRecord
end
