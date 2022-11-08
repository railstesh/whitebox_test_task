class Project < ApplicationRecord
  has_many :tickets
  belongs_to :user

  validates :description, :title, :start_date, :end_date, presence: true 
  enum status: [:working, :completed]
end
