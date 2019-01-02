class CreateJobLists < ActiveRecord::Migration[5.2]
  def change
    create_table :job_lists do |t|
      t.integer :user_id
      t.integer :job_listing_id
      
      t.timestamps
    end
  end
end
