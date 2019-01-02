class User < ApplicationRecord
  has_many :job_lists
  has_many :job_listings, through: :job_lists
end
