class CreateUsers < ActiveRecord::Migration
  def change
    create_table 	:users do |t|
    	
      t.string 		:provider
      t.string		:uid
    	t.string 		:name
    	t.string		:email
    	t.string		:img_url
      
    end
  end
end


# from omniauth tutorial:
# omniauth provider string (e.g. “github”), a uid string, and a name string.
