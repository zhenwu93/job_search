class AddCompanyToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :company, :string
  end
end
