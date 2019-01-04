class RemoveJobTypeFromJobListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_listings, :job_type, :string
  end
end
