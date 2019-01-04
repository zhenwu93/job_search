class RemoveLocationFromJobListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_listings, :location, :string
  end
end
