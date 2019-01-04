class RemoveRequirementsFromJobListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_listings, :requirements, :string
  end
end
