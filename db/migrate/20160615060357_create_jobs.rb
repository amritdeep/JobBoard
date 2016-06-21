class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :location
      t.string :summary

      t.timestamps null: false
    end
  end
end
