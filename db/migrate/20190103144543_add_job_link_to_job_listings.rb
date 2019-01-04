class AddJobLinkToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :website, :string
  end
end
