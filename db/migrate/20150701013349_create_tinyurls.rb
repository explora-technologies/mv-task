class CreateTinyurls < ActiveRecord::Migration
  def change
    create_table :tinyurls do |t|
      t.text :user_url
      t.string :tiny_url

      t.timestamps null: false
    end
  end
end
