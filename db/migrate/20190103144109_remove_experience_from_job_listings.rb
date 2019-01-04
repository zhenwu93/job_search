class RemoveExperienceFromJobListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_listings, :experience, :integer
  end
end
