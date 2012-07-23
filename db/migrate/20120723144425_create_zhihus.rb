class CreateZhihus < ActiveRecord::Migration
  def change
    create_table :zhihus do |t|
      t.string :title
      t.string :tags
      t.string :desc
      t.text :answer

      t.timestamps
    end
  end
end
