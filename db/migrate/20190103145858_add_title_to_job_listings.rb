class AddTitleToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :title, :string
  end
end
