class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :job_listings, :type, :job_type
  end
end
