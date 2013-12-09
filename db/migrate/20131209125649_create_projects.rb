class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.string :location
      t.float :longitude
      t.float :latitude
      t.datetime :target_date

      t.timestamps
    end
  end
end
