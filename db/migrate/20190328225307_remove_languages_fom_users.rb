class RemoveLanguagesFomUsers < ActiveRecord::Migration[5.2]
  def change
    
    remove_column :users, :interested_language1
    remove_column :users, :language1_level
    remove_column :users, :interested_language2
    remove_column :users, :language1_leve2
    
  end
end
