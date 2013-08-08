class ChangeDefaultProficiency < ActiveRecord::Migration
  def change
  	change_table :skill_users do |t|
  		t.change_default :proficiency, 0
  	end
  end
end
