class AddIdToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :job_id, :integer
  end
end
