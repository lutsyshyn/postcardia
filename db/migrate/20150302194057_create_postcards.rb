class CreatePostcards < ActiveRecord::Migration
  def change
    create_table :postcards do |t|
      t.integer :user_id
      t.integer :recepient_id
      t.string :identifier

      t.timestamps
    end
  end
end
