class Job < ApplicationRecord
  has_many :job_skills
  has_many :skills, through: :job_skills
end
