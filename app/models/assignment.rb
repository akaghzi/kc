class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :company
  validates :role_id, uniqueness: {scope: [:user,:company]}
end
