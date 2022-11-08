class Ticket < ApplicationRecord
  validates :description, :title, :start_date, :end_date, presence: true
  belongs_to :project

  enum status: [:intial_stage, :working, :completed]
  enum priority: [:low, :medium, :high]
end
