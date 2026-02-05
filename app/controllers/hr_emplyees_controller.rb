class HrEmplyeesController < ApplicationController
  def index
    matching_hr_emplyees = HrEmplyee.all

    @list_of_hr_emplyees = matching_hr_emplyees.order({ :created_at => :desc })

    render({ :template => "hr_emplyee_templates/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_hr_emplyees = HrEmplyee.where({ :id => the_id })

    @the_hr_emplyee = matching_hr_emplyees.at(0)

    render({ :template => "hr_emplyee_templates/show" })
  end

  def create
    the_hr_emplyee = HrEmplyee.new
    the_hr_emplyee.f_name = params.fetch("query_f_name")
    the_hr_emplyee.l_name = params.fetch("query_l_name")
    the_hr_emplyee.job_title = params.fetch("query_job_title")
    the_hr_emplyee.department = params.fetch("query_department")
    the_hr_emplyee.location = params.fetch("query_location")
    the_hr_emplyee.email = params.fetch("query_email")
    the_hr_emplyee.phone = params.fetch("query_phone")
    the_hr_emplyee.manager_id = params.fetch("query_manager_id")
    the_hr_emplyee.team = params.fetch("query_team")
    the_hr_emplyee.im_handle = params.fetch("query_im_handle")
    the_hr_emplyee.users_id = params.fetch("query_users_id")
    the_hr_emplyee.users_count = params.fetch("query_users_count")

    if the_hr_emplyee.valid?
      the_hr_emplyee.save
      redirect_to("/hr_emplyees", { :notice => "Hr emplyee created successfully." })
    else
      redirect_to("/hr_emplyees", { :alert => the_hr_emplyee.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_hr_emplyee = HrEmplyee.where({ :id => the_id }).at(0)

    the_hr_emplyee.f_name = params.fetch("query_f_name")
    the_hr_emplyee.l_name = params.fetch("query_l_name")
    the_hr_emplyee.job_title = params.fetch("query_job_title")
    the_hr_emplyee.department = params.fetch("query_department")
    the_hr_emplyee.location = params.fetch("query_location")
    the_hr_emplyee.email = params.fetch("query_email")
    the_hr_emplyee.phone = params.fetch("query_phone")
    the_hr_emplyee.manager_id = params.fetch("query_manager_id")
    the_hr_emplyee.team = params.fetch("query_team")
    the_hr_emplyee.im_handle = params.fetch("query_im_handle")
    the_hr_emplyee.users_id = params.fetch("query_users_id")
    the_hr_emplyee.users_count = params.fetch("query_users_count")

    if the_hr_emplyee.valid?
      the_hr_emplyee.save
      redirect_to("/hr_emplyees/#{the_hr_emplyee.id}", { :notice => "Hr emplyee updated successfully." } )
    else
      redirect_to("/hr_emplyees/#{the_hr_emplyee.id}", { :alert => the_hr_emplyee.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_hr_emplyee = HrEmplyee.where({ :id => the_id }).at(0)

    the_hr_emplyee.destroy

    redirect_to("/hr_emplyees", { :notice => "Hr emplyee deleted successfully." } )
  end
end
