class SkillsController < ApplicationController
  def index
    matching_skills = Skill.all

    @list_of_skills = matching_skills.order({ :created_at => :desc })

    render({ :template => "skill_templates/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_skills = Skill.where({ :id => the_id })

    @the_skill = matching_skills.at(0)

    render({ :template => "skill_templates/show" })
  end

  def create
    the_skill = Skill.new
    the_skill.industry_id = params.fetch("query_industry_id")
    the_skill.industries_id = params.fetch("query_industries_id")
    the_skill.users_id = params.fetch("query_users_id")

    if the_skill.valid?
      the_skill.save
      redirect_to("/skills", { :notice => "Skill created successfully." })
    else
      redirect_to("/skills", { :alert => the_skill.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_skill = Skill.where({ :id => the_id }).at(0)

    the_skill.industry_id = params.fetch("query_industry_id")
    the_skill.industries_id = params.fetch("query_industries_id")
    the_skill.users_id = params.fetch("query_users_id")

    if the_skill.valid?
      the_skill.save
      redirect_to("/skills/#{the_skill.id}", { :notice => "Skill updated successfully." } )
    else
      redirect_to("/skills/#{the_skill.id}", { :alert => the_skill.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_skill = Skill.where({ :id => the_id }).at(0)

    the_skill.destroy

    redirect_to("/skills", { :notice => "Skill deleted successfully." } )
  end
end
