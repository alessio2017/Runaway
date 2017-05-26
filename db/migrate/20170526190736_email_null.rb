class EmailNull < ActiveRecord::Migration[5.0]
  def up
    change_column :users, :email, :string, :null => true #now i can set email to null, but whenever i sign in without a provider email must be unique and present. I do this control at Controller Level, not DB Level. If they have access to the console, I'm screwed
  end

  def down
    change_column :users, :email, :string, :null => false #now i can set email to null, but whenever i sign in without a provider email must be unique and present. I do this control at Controller Level, not DB Level. If they have access to the console, I'm screwed
  end
end
