class User < ActiveRecord::Base
  has_many :skill_users
  has_many :skills, through: :skill_users


  def proficiency_for(skill)
  	skill_user = SkillUser.where(user_id: self.id, skill_id: skill.id).pop
  	skill_user.proficiency
  end

  def set_proficiency_for(skill, level)
  	skill_user = SkillUser.where(user_id: self.id, skill_id: skill.id).pop
  	skill_user.proficiency = level
  	skill_user.save
  end
end