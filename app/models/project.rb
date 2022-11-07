class Project < ApplicationRecord
  belongs_to :user

  enum status: [:intial_stage, :working, :completed]
end
