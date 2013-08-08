class CreateSkillsUsers < ActiveRecord::Migration
  def change
  	create_table :skill_users do |t|
  		t.references :user, :skill
  		t.integer :proficiency

  		t.timestamps
  	end
  end
end
