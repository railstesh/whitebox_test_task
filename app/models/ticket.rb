class Ticket < ApplicationRecord
  belongs_to :project, dependent: :destroy

  enum status: [:intial_stage, :working, :completed]

  enum priority: [:small,:medium]
end