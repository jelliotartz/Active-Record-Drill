class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :schema_img_filename
      t.string :hint
      t.string :start_text
    end
  end
end
