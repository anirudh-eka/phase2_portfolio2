class Skill < ActiveRecord::Base
  has_many :skill_users
  has_many :users, through: :skill_users
  validates_uniqueness_of :name

  def user_with_proficiency(level)
  	skill_user = SkillUser.where(skill_id: self.id, proficiency: level).pop
	User.find_by_id(skill_user.user_id)
  end
end
