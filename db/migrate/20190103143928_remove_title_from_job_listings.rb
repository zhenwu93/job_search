class RemoveTitleFromJobListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_listings, :title, :string
  end
end
