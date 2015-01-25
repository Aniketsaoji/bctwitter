class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.string :tage

      t.timestamps null: false
    end
  end
end
