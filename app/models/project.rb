class Project < ApplicationRecord
  belongs_to :user

  has_many :tickets

  enum status: [:intial_stage, :working, :completed]
end
