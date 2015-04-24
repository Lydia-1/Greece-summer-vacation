class CreateInfos < ActiveRecord::Migration
  def change
  	create_table :donnees do |t|
  		t.string :name
  		t.string :email	
  	end
  end
end
