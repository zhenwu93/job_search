class JobList < ApplicationRecord
  belongs_to :user
  belongs_to :job_listing
end
