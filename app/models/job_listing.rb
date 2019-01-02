class JobListing < ApplicationRecord
  has_many :job_lists
  has_many :users, through: :job_lists
end
