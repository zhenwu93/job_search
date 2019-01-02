class AddRequirementsToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :requirements, :string
  end
end
