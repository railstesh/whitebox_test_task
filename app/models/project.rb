class Project < ApplicationRecord
  validates :description, :title, :start_date, :end_date, presence: true
  
  belongs_to :user

  has_many :tickets

  enum status: [:intial_stage, :working, :completed]
end
