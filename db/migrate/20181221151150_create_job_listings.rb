class CreateJobListings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_listings do |t|
      t.string :title
      t.string :description
      t.integer :salary
      t.string :location
      t.string :type
      t.integer :experience
      
      t.timestamps
    end
  end
end
