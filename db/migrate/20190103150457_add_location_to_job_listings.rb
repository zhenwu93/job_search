class AddLocationToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :location, :string
  end
end
