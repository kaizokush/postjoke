class CreateJokes < ActiveRecord::Migration[5.0]
  def change
    create_table :jokes do |t|
    	t.text:jokes
    	t.string:author
      t.timestamps null:false
    end
  end
end
