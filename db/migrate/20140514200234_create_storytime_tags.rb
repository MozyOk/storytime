class CreateStorytimeTags < ActiveRecord::Migration[4.2]
  def change
    create_table :storytime_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
